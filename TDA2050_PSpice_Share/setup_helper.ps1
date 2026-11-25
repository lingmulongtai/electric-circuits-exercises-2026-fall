$ErrorActionPreference = "Continue"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# 1. Close running PSpice Schematics / Message Viewer so PSPICEEV.INI is not locked or overwritten
Get-Process -Name "PSched", "MsgView", "PspiceAD", "Probe" -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
Start-Sleep -Milliseconds 500

# 2. Locate PSpice installation directory
$pspiceRoot = "C:\Program Files (x86)\OrCAD_Demo\PSpice"
if (-not (Test-Path $pspiceRoot)) {
    $pspiceRoot = "C:\Program Files\OrCAD_Demo\PSpice"
}
$psched = Join-Path $pspiceRoot "PSched.exe"
$sysUserLib = Join-Path $pspiceRoot "UserLib"
$sysLibrary = Join-Path $pspiceRoot "Library"

# 3. Create writable UserLib, Backup, and English workspace folder
$userBase = Join-Path $env:LOCALAPPDATA "OrCAD_Demo\PSpice"
$userLib = Join-Path $userBase "UserLib"
$userBackup = Join-Path $userBase "Backup"
$workDir = Join-Path $env:USERPROFILE "ECE_PSpice"

New-Item -ItemType Directory -Path $userLib -Force | Out-Null
New-Item -ItemType Directory -Path $userBackup -Force | Out-Null
New-Item -ItemType Directory -Path $workDir -Force | Out-Null

if (Test-Path $sysUserLib) {
    Copy-Item "$sysUserLib\*" -Destination $userLib -Force -ErrorAction SilentlyContinue
}
if (Test-Path $sysLibrary) {
    Copy-Item "$sysLibrary\nom.*" -Destination $userLib -Force -ErrorAction SilentlyContinue
    Copy-Item "$sysLibrary\eval.*" -Destination $userLib -Force -ErrorAction SilentlyContinue
    Copy-Item "$sysLibrary\breakout.*" -Destination $userLib -Force -ErrorAction SilentlyContinue
}

Copy-Item "$scriptDir\TDA2050_SIMPLE.*" -Destination $userLib -Force
Copy-Item "$scriptDir\TDA2050_SIMPLE.*" -Destination $workDir -Force
Copy-Item "$scriptDir\*.sch" -Destination $workDir -Force

# Also try copying to system UserLib if user has permissions
if (Test-Path $sysUserLib) {
    Copy-Item "$scriptDir\TDA2050_SIMPLE.*" -Destination $sysUserLib -Force -ErrorAction SilentlyContinue
}

# 4. Update PSPICEEV.INI in VirtualStore (and C:\Windows if writable)
$vsWin = Join-Path $env:LOCALAPPDATA "VirtualStore\Windows"
New-Item -ItemType Directory -Path $vsWin -Force | Out-Null
$vsIni = Join-Path $vsWin "PSPICEEV.INI"
$winIni = "C:\Windows\PSPICEEV.INI"

if (-not (Test-Path $vsIni) -and (Test-Path $winIni)) {
    Copy-Item $winIni -Destination $vsIni -Force
}

function Update-PspiceIni($iniFile) {
    if (-not (Test-Path $iniFile)) { return }
    $c = Get-Content $iniFile -Raw -Encoding Default

    # Fix BACKUP path
    $c = $c -replace '(?m)^BACKUP=.*$', "BACKUP=`"$userBackup`""

    # Prepend userLib and workDir to LIBPATH, UserSymLIBPATH, BaseSymLIBPATH
    $newLibPath = "`"`"$userLib`";`"$workDir`";`"C:\Program Files (x86)\OrCAD_Demo\PSpice\UserLib`";`"C:\Program Files (x86)\OrCAD_Demo\PSpice\Library`";`"C:\Program Files\OrCAD_Demo\PSpice\UserLib`";`"C:\Program Files\OrCAD_Demo\Capture\Library\PSpice`";`"C:\Program Files\OrCAD_Demo\PSpice\Library`"`""
    $c = $c -replace '(?m)^LIBPATH=.*$', "LIBPATH=$newLibPath"
    $c = $c -replace '(?m)^UserSymLIBPATH=.*$', "UserSymLIBPATH=$newLibPath"
    $c = $c -replace '(?m)^BaseSymLIBPATH=.*$', "BaseSymLIBPATH=$newLibPath"

    # Add LINE2=.lib TDA2050_SIMPLE.lib under [PSPICE NETLIST]
    if ($c -notmatch 'TDA2050_SIMPLE\.lib') {
        $c = $c -replace '(?m)^(LINE1=.*nom\.lib.*)$', "`$1`r`nLINE2=.lib TDA2050_SIMPLE.lib"
    }

    # Add LIB10=TDA2050_SIMPLE [.slb] under [PART LIBS]
    if ($c -notmatch 'TDA2050_SIMPLE \[\.slb\]') {
        $c = $c -replace '(?m)^(LIB9=.*)$', "`$1`r`nLIB10=TDA2050_SIMPLE [.slb]"
    }

    Set-Content -Path $iniFile -Value $c -Encoding Default -ErrorAction SilentlyContinue
}

Update-PspiceIni $vsIni
Update-PspiceIni $winIni

# 5. Register Recent Files in Registry
$regPath = "HKCU:\Software\PSpice\Schematics\Recent File List"
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}
Set-ItemProperty -Path $regPath -Name "File1" -Value (Join-Path $workDir "TDA2050_Amplifier.sch")
Set-ItemProperty -Path $regPath -Name "File2" -Value (Join-Path $workDir "TDA2050_IdealOpAmp.sch")
Set-ItemProperty -Path $regPath -Name "File3" -Value (Join-Path $workDir "TDA2050_uA741.sch")

Write-Host "Setup complete! Launching PSpice Schematics..." -ForegroundColor Green
if (Test-Path $psched) {
    Start-Process -FilePath $psched -ArgumentList "`"$(Join-Path $workDir 'TDA2050_Amplifier.sch')`""
}
