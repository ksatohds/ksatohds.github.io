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
| `nmf_app.html`（行列分解タブ） | 架空の食品嗜好データ | **本サイトのオリジナル（合成データ）** |
| `nmf_app.html`（トピックモデルタブ）, `dfm_ca.html` | 沖縄県「観光客満足度調査」自由記述から作成した文書単語行列 | 下記のとおり |

### 2.1 宮沢賢治「注文の多い料理店」

Kenji Miyazawa died in 1933, so the work has been in the public domain in Japan since long
before the 2018 term extension (which was not retroactive). The transcription is from Aozora
Bunko; its 底本, 入力者 and 校正者 are credited in the app itself, as Aozora asks.

著者は1933年没であり、日本国内では保護期間が満了しています（2018年の期間延長は
既に満了した著作物には遡及しません）。翻刻は青空文庫のものを用い、青空文庫の求めに
従い底本・入力者・校正者をアプリ内に明記しています。

- 出典: <https://www.aozora.gr.jp/cards/000081/card43754.html>
- 底本: 『注文の多い料理店』新潮文庫（新潮社, 1990年第1刷／1997年17刷）
- 入力: 土屋隆、校正: noriko saito

### 2.2 沖縄県「観光客満足度調査」由来の文書単語行列

**What is actually embedded / 実際に収録しているもの**

Not the free-text answers. The apps hold a sparse **word-frequency matrix**:

原文（自由記述）そのものは収録していません。収録しているのは疎な**語頻度行列**です。

- 323 documents × 95 vocabulary items, 1,253 non-zero counts
- 4 attribute columns: 居住地 / 性別 / 年代 / 満足度
- The longest vocabulary item is 5 characters (「レンタカー」); no phrase, clause or
  sentence is present, and the original wording cannot be reconstructed from it.
  最長の語は5文字（「レンタカー」）で、文・節は一切含まれず、原文を復元することは
  できません。

**Terms of the source / 出典側の条件**

沖縄県公式ホームページの利用案内は、掲載情報を著作権の対象とし、私的使用・引用など
著作権法上認められた場合を除く転用および改変を認めていません（政府標準利用規約や
クリエイティブ・コモンズは採用されていません）。
<https://www.pref.okinawa.jp/site/riyoannai/index.html>

**Basis for the present use / 本サイトでの利用の位置づけ**

The embedded object is a set of word counts — facts extracted from the text — rather than
the text itself, and it was produced for and is used for information analysis. Japanese
copyright law article 30-4 permits using a work for 情報解析 (extracting, comparing and
classifying linguistic elements from a large body of information) where the purpose is not
to enjoy the expression.

収録物は語の出現回数という事実であり、表現そのものではありません。作成・利用の目的は
情報解析であり、著作権法第30条の4（情報解析の用に供する場合等）の趣旨に沿うものと
考えています。出典は沖縄県（&copy; 沖縄県）としてアプリ内に明記しています。

This is our reading, not legal advice. 権利者からのご指摘があれば速やかに対応します。

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
