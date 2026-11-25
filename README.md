# Electric Circuits Exercises (2026 Fall)

電気回路演習（Electric Circuits Exercises）の全セッション（Session 1〜8）の **PSpice 9.1 回路モデル・日本語解説スライドPDF・シミュレーション結果・実験ノート（Logbook）** をセッションごとに整理したリポジトリです。

---

## 🗂️ セッション別フォルダ構成（目次）

| フォルダ | 対象セッション | 内容・ステータス |
| :--- | :--- | :--- |
| **[`Docs_Japanese_Guides/`](./Docs_Japanese_Guides/)** | **共通講義資料・回路解説** | ✅ **完成**<br>・[オペアンプ基礎理論と応用 日本語完全解説PDF（全9ページ）](./Docs_Japanese_Guides/OperationalAmplifier2026_日本語解説.pdf)<br>・[単電源アンプ回路図 `M98TDA2050-04` 日本語完全図解PDF（全2ページ）](./Docs_Japanese_Guides/TDA2050_単電源回路_M98TDA2050-04_日本語解説.pdf) |
| **[`Session_01_02_OpAmp_PSpice_Simulation/`](./Session_01_02_OpAmp_PSpice_Simulation/)** | **Session 1 & 2**<br>（Week 8–10） | ✅ **完成**<br>・[友達共有用 1クリックPSpiceセットアップZIP (`TDA2050_PSpice_Share.zip`)](./Session_01_02_OpAmp_PSpice_Simulation/TDA2050_PSpice_Share.zip)<br>・[PSpice 9.1 回路図（`.sch`）＆ネットリスト一式](./Session_01_02_OpAmp_PSpice_Simulation/PSpice_Models/)<br>・[Session 1 & 2 実験ノート（Logbook）](./Session_01_02_OpAmp_PSpice_Simulation/ECE_Session1_Session2_Logbook.md)<br>・[Excelデータ＆グラフ集](./Session_01_02_OpAmp_PSpice_Simulation/ECE_Session1_Session2_Results.xlsx) ＆ [プロット画像（6枚）](./Session_01_02_OpAmp_PSpice_Simulation/Figures/) |
| **[`Session_03_Breadboard_Testing/`](./Session_03_Breadboard_Testing/)** | **Session 3**<br>（Week 11） | 🔜 **次回追加予定**<br>・ブレッドボード仮組み・$6.8\,\Omega$ パワー抵抗負荷でのDCオフセット測定・$1\text{ kHz}$ 入出力波形と発熱考察 |
| **[`Session_04_05_PCB_and_Speaker_Test/`](./Session_04_05_PCB_and_Speaker_Test/)** | **Session 4 & 5**<br>（Week 12–13） | 🔜 **順次追加予定**<br>・MATLABテスト波形生成（`sweep.m`）・プリント基板（PCB）実装・ヒートシンク装着・スピーカー実音楽再生テスト |
| **[`Session_06_08_Power_Supply_LM317/`](./Session_06_08_Power_Supply_LM317/)** | **Session 6, 7 & 8**<br>（Week 14–15） | 🔜 **順次追加予定**<br>・LM317 / LM117 リニア電源回路（トランス・整流回路・ダーリントンBJT制御）のPSpiceモデル・熱設計・アンプとの最終統合 |

---

## ⚡ すぐ使えるクイックリンク（Session 1 & 2）

### 1. 他のPC（友達のPC）で PSpice 回路図を1クリックで開く
1. **[`Session_01_02_OpAmp_PSpice_Simulation/TDA2050_PSpice_Share.zip`](./Session_01_02_OpAmp_PSpice_Simulation/TDA2050_PSpice_Share.zip)** をダウンロードして**「すべて展開（解凍）」**します。
2. フォルダ内の **`1_Click_Setup_and_Open.bat`** をダブルクリックします。
   - 自動的にカスタム部品（`TDA2050_SIMPLE`）がPSpice 9.1に登録され、エラーが出ない英語パス（`C:\Users\<ユーザー名>\ECE_PSpice\`）から授業スライドと同じ配置の回路図が立ち上がります。

### 2. 日本語解説PDFを読む
- 📘 **[`OperationalAmplifier2026_日本語解説.pdf`](./Docs_Japanese_Guides/OperationalAmplifier2026_日本語解説.pdf)**：講義スライド全9ページの日本語訳＋仮想短絡・仮想接地・非反転／反転利得・GBWP・RCフィルタ・ボード線図の導出解説
- 📙 **[`TDA2050_単電源回路_M98TDA2050-04_日本語解説.pdf`](./Docs_Japanese_Guides/TDA2050_単電源回路_M98TDA2050-04_日本語解説.pdf)**：授業で使う単電源アンプ回路図（`Schematic.png` / `M98TDA2050-04`）の全15部品の役割・DCオフセット電圧・カットオフ周波数計算シート
