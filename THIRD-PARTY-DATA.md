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
| `pca_model.html` | `USArrests` | datasets | Part of R (GPL-2 \| GPL-3) | McNeil, D.R. (1977), *Interactive Data Analysis*, Wiley; World Almanac and Book of Facts 1975 |
| `pca_model.html` | `mtcars` | datasets | Part of R (GPL-2 \| GPL-3) | Henderson &amp; Velleman (1981), *Biometrics* 37, 391–411; 1974 *Motor Trend* magazine |

Changes / 加えた変更:

- `aml`, `cars`, `ToothGrowth`, `iris`, `USArrests`, `mtcars` — none. 改変なし。
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
| `dfm_ca.html`, `nmf_app.html`（トピックモデルタブ） | 宮沢賢治「銀河鉄道の夜」から作成した文書単語行列 | **パブリックドメイン** |
| `nmf_app.html`（行列分解タブ） | 架空の食品嗜好データ | **本サイトのオリジナル（合成データ）** |

Kenji Miyazawa died in 1933, so these works have been in the public domain in Japan since
long before the 2018 term extension, which was not retroactive. The transcriptions are from
Aozora Bunko; as Aozora asks, the 底本 (source edition), 入力者 (typist) and 校正者
(proofreader) of each file are credited in the apps themselves and repeated below.

著者は1933年没であり、日本国内の保護期間は2018年の期間延長（既に満了した著作物には
遡及しません）より前に満了しています。翻刻は青空文庫のものを用い、同文庫の求めに従い
底本・入力者・校正者をアプリ内に明記しています。

| 作品 | 底本 | 入力 | 校正 | 青空文庫 |
|---|---|---|---|---|
| 注文の多い料理店 | 『注文の多い料理店』新潮文庫、新潮社 | 土屋隆 | noriko saito | [43754](https://www.aozora.gr.jp/cards/000081/card43754.html) |
| 銀河鉄道の夜 | 『新編銀河鉄道の夜』新潮文庫、新潮社 | 中村隆生、野口英司 | 野口英司 | [456](https://www.aozora.gr.jp/cards/000081/card456.html) |

### 2.1 `dfm_ca.html` / `nmf_app.html` に収録した文書単語行列

「銀河鉄道の夜」全文（37,940字）を約150字ずつに区切り、語の出現回数に変換したものです
（**157文書 × 95語、非ゼロ679**）。2文字以上の漢字語・カタカナ語のうち2文書以上に出現
するものを採用し、ルビと青空文庫の注記（［＃…］）は除いています。

属性は3列で、いずれも**作者自身の全9章**にもとづきます。章の途中では区切っていません。

| 列 | 水準 |
|---|---|
| 場面 | 起（1〜3章・4,498字）／承（4〜6章・6,316字）／転（7〜8章・7,763字）／結（9章・19,363字） |
| 章 | 1 午后の授業 … 9 ジョバンニの切符（9水準） |
| 舞台 | 地上（1〜5章）／銀河（6〜9章） |

第9章だけで全体の51%を占めるため、「結」が最も大きな場面になります。これは分割の仕方
ではなく作品の構造によるものです。

**なぜ1作品なのか / Why a single work**

An earlier version used three different works. Their vocabularies barely overlap -- only 32
of the 95 terms occurred in more than one work -- so the top of the frequency list was
proper nouns and every method sorted the documents perfectly while saying nothing. Within
one work the author, the register and most of the vocabulary are held constant (75 of the
95 terms occur in two or more acts), so what distinguishes a document is the scene it comes
from, which is the question actually worth asking.

以前は3作品を並べていましたが、作品ごとに固有名詞が異なるため語彙がほとんど重ならず
（95語中32語のみが複数作品に出現）、どの手法でも完全に分離してしまい分析になりません
でした。1作品にそろえると作者・文体・語彙が共通になり（95語中75語が2つ以上の場面に
出現）、文書を分けるものは場面の違いだけになります。

### 2.2 以前収録していたデータについて

Earlier versions of `dfm_ca.html` and `nmf_app.html` embedded a word-frequency matrix
derived from the free-text answers of a tourism survey published by Okinawa Prefecture.
That source carries no open licence, so the use rested on the information-analysis
exception (Japanese Copyright Act art. 30-4). It has been replaced by the public-domain
material above, and nothing derived from it remains in this repository.

以前は沖縄県の観光統計調査の自由記述に由来する語頻度行列を収録していました。出典側に
オープンライセンスの定めがなく、著作権法第30条の4（情報解析）に依拠する形だったため、
上記のパブリックドメイン資料に差し替えました。当該データに由来するものは本リポジトリ
に残していません。

---

## 3. Algorithms / アルゴリズム

The statistical routines (OLS; IRWLS for logistic regression; the Efron partial likelihood
with Newton-Raphson, Kaplan-Meier, Schoenfeld residuals and Harrell's concordance for Cox
regression; NMF; CART; correspondence analysis; the Jacobi eigendecomposition behind PCA)
were implemented from the standard published formulas and verified numerically against R as a
black box. No source code from R or from any R package was copied or translated.

統計計算は公表された数式から実装し、R とは数値比較（ブラックボックス検証）で一致を
確認したものです。R および R パッケージのソースコードの複製・翻案は行っていません。

If you are a rights holder and would like an entry changed or removed, please open an issue.
