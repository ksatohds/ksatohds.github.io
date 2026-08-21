# Third-party data notice / 第三者データについて

The code in this repository is released under the MIT License (see `LICENSE`).

The browser apps under `html_app/` bundle small example data sets so that they work without
any download. Where those data are not authored here, the origin and the terms are listed
below. Values are reproduced **unmodified** unless a change is noted.

本リポジトリのコードは MIT ライセンスです（`LICENSE` 参照）。`html_app/` 配下のアプリに
は動作確認用のデモデータを同梱しています。当方の著作物でないものについては、出典と
条件を以下に示します。記載のない限り、値は改変せずに収録しています。

---

## 1. Statistical data sets / 統計データ

| App | Data | R package | Package licence | Primary source |
|---|---|---|---|---|
| `coxph_model.html` | `aml` | boot | **Unlimited** | Embury et al. (1977), Stanford University; values from Miller, R.G. (1981), *Survival Analysis*, John Wiley |
| `coxph_model.html` | `pharmacoSmoking` | asaur | **CC0** (public domain dedication) | Companion data for Dirk F. Moore, *Applied Survival Analysis Using R*, Springer |
| `class_tree.html` | `iris` | datasets | Part of R (GPL-2 \| GPL-3) | Fisher (1936); Anderson (1935) |
| `linear_model.html` | `cars` | datasets | Part of R (GPL-2 \| GPL-3) | Ezekiel (1930) |
| `linear_model.html` | `ToothGrowth` | datasets | Part of R (GPL-2 \| GPL-3) | Crampton (1947) |
| `logistic_model.html` | `infert` | datasets | Part of R (GPL-2 \| GPL-3) | Trichopoulos et al. (1976) |
| `logistic_model.html` | `iris` | datasets | Part of R (GPL-2 \| GPL-3) | Fisher (1936); Anderson (1935) |

Changes / 加えた変更:

- `aml`, `cars`, `ToothGrowth`, `iris` — none. 改変なし。
- `pharmacoSmoking` — restricted to the 113 patients with `ttr > 0` and to six columns,
  with `longestNoSmoke2 = 1` when `longestNoSmoke >= 100`, mirroring the lecture script.
  CC0 imposes no restriction on such changes.
- `infert` — the matched-set identifiers `stratum` and `pooled.stratum` are omitted.

Package versions when extracted: boot 1.3-32, asaur 0.50, datasets (R 4.5.2).

---

## 2. Text data / テキストデータ

| App | Data | Status |
|---|---|---|
| `text_dfm.html` | 宮沢賢治「注文の多い料理店」全文（147段落） | **パブリックドメイン** |
| `dfm_viz.html` | 同作品から作成した文書単語行列 | **パブリックドメイン** |
| `dfm_ca.html`, `nmf_app.html`（トピックモデルタブ） | 近代文学3作品から作成した文書単語行列 | **パブリックドメイン** |
| `nmf_app.html`（行列分解タブ） | 架空の食品嗜好データ | **本サイトのオリジナル（合成データ）** |

All of the literary texts are by authors who died in 1948 or earlier, so the Japanese
copyright term had already expired before the 2018 extension, which was not retroactive.
The transcriptions come from Aozora Bunko; as Aozora asks, the 底本 (source edition),
入力者 (typist) and 校正者 (proofreader) of each file are credited in the apps themselves
and repeated below.

いずれも著者が1948年以前に没しており、日本国内の保護期間は2018年の期間延長（既に満了
した著作物には遡及しません）より前に満了しています。翻刻は青空文庫のものを用い、同文庫
の求めに従い底本・入力者・校正者をアプリ内に明記しています。

### 2.1 収録作品と青空文庫のクレジット

| 作品 | 著者（没年） | 底本 | 入力 | 校正 | 青空文庫 |
|---|---|---|---|---|---|
| 山月記 | 中島敦 (1942) | 『李陵・山月記』新潮文庫、新潮社 | 平松大樹 | 林めぐみ | [624](https://www.aozora.gr.jp/cards/000119/card624.html) |
| 走れメロス | 太宰治 (1948) | 『太宰治全集3』ちくま文庫、筑摩書房 | 金川一之 | 高橋美奈子 | [1567](https://www.aozora.gr.jp/cards/000035/card1567.html) |
| 注文の多い料理店 | 宮沢賢治 (1933) | 『注文の多い料理店』新潮文庫、新潮社 | 土屋隆 | norikosaito | [43754](https://www.aozora.gr.jp/cards/000081/card43754.html) |

### 2.2 `dfm_ca.html` / `nmf_app.html` に収録した文書単語行列

The three works are concatenated, split into chunks of roughly 150 characters, and reduced
to word counts: **71 documents x 95 vocabulary items, 333 non-zero counts**, with three
attribute columns (著者 / 作品 / ジャンル). Tokenisation keeps kanji and katakana words of
two characters or more that occur in at least two documents. Ruby readings and the
editorial annotations in the Aozora files (［＃…］) are removed before counting.

上記3作品を約150字ずつに分割し、語の出現回数に変換したものです（**71文書 × 95語、
非ゼロ333**、属性列は著者・作品・ジャンルの3列）。2文字以上の漢字語・カタカナ語のうち
2文書以上に出現するものを採用し、ルビと青空文庫の注記（［＃…］）は除いています。

Three works rather than one because correspondence analysis and the topic model need a
covariate to plot documents against; a single work gives none. `text_dfm.html` and
`dfm_viz.html` keep using the Miyazawa text alone, which is what those apps demonstrate.

対応分析・トピックモデルは文書に対応する共変量がないと図が描けないため3作品にしていま
す。`text_dfm.html` と `dfm_viz.html` は従来どおり宮沢賢治の1作品のみです。

### 2.3 以前収録していたデータについて

Earlier versions of `dfm_ca.html` and `nmf_app.html` embedded a word-frequency matrix
derived from the free-text answers of a tourism survey published by Okinawa Prefecture.
That source carries no open licence, so the use rested on the information-analysis
exception (Japanese Copyright Act art. 30-4). It has been replaced by the public-domain
corpus above, and nothing derived from it remains in this repository.

以前は沖縄県の観光統計調査の自由記述に由来する語頻度行列を収録していました。出典側に
オープンライセンスの定めがなく、著作権法第30条の4（情報解析）に依拠する形だったため、
上記のパブリックドメイン資料に差し替えました。当該データに由来するものは本リポジトリ
に残していません。

---

## 3. Algorithms / アルゴリズム

The statistical routines (OLS; IRWLS for logistic regression; the Efron partial likelihood
with Newton-Raphson, Kaplan-Meier, Schoenfeld residuals and Harrell's concordance for Cox
regression; NMF; CART; correspondence analysis) were implemented from the standard published
formulas and verified numerically against R as a black box. No source code from R or from any
R package was copied or translated.

統計計算は公表された数式から実装し、R とは数値比較（ブラックボックス検証）で一致を
確認したものです。R および R パッケージのソースコードの複製・翻案は行っていません。

If you are a rights holder and would like an entry changed or removed, please open an issue.
