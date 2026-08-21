# Third-party data notice / 第三者データについて

The code in this repository is released under the MIT License (see `LICENSE`).

The browser apps under `html_app/` embed a few small example data sets so that they work
without any download. Those data sets are **not** covered by the MIT License above: they
originate from R packages and from the primary publications listed below, and they are
reproduced **unmodified** (except where a column is noted as omitted).

本リポジトリのコードは MIT ライセンスです（`LICENSE` 参照）。ただし `html_app/` 配下の
アプリに埋め込んでいるデモ用データは MIT の対象ではなく、下記の R パッケージおよび
一次文献に由来します。値そのものは改変せずに収録しています（列を除いた場合は明記）。

---

## Embedded data sets / 収録データ

| App | Data | R package | Package licence | Primary source |
|---|---|---|---|---|
| `class_tree.html` | `iris` | datasets | Part of R (GPL-2 \| GPL-3) | Fisher (1936); Anderson (1935) |
| `linear_model.html` | `cars` | datasets | Part of R (GPL-2 \| GPL-3) | Ezekiel (1930) |
| `linear_model.html` | `ToothGrowth` | datasets | Part of R (GPL-2 \| GPL-3) | Crampton (1947) |
| `logistic_model.html` | `infert` | datasets | Part of R (GPL-2 \| GPL-3) | Trichopoulos et al. (1976) |
| `logistic_model.html` | `iris` | datasets | Part of R (GPL-2 \| GPL-3) | Fisher (1936); Anderson (1935) |
| `coxph_model.html` | `leukemia` (`aml`) | survival | LGPL (>= 2) | Rupert G. Miller (1997), *Survival Analysis*, John Wiley & Sons, ISBN 0-471-25218-2 |
| `coxph_model.html` | `gehan` | MASS | GPL-2 \| GPL-3 | Cox, D.R. & Oakes, D. (1984), *Analysis of Survival Data*, Chapman & Hall, p. 7 — taken from Gehan, E.A. (1965), *Biometrika* **52**, 203-233 |

Columns omitted for clarity / 見やすさのため除いた列:

- `infert` — the matched-set identifiers `stratum` and `pooled.stratum` (design bookkeeping,
  not covariates).
- `gehan` — the matched-pair label `pair` (an identifier, not a covariate).

Package versions used when the data were extracted: survival 3.8-3, MASS 7.3-65,
datasets (R 4.5.2). Both `survival` and `MASS` are *recommended* packages, i.e. they are
distributed together with R itself.

---

## Notes / 補足

- **The values are factual measurements.** They were published in the journals and books
  cited above; the apps reproduce them unchanged, with attribution, for teaching purposes.
  データは上記文献で公表された測定値（事実）であり、教育目的で出典を明示のうえ
  改変せず再収録しています。
- **Licence strength differs between the sources.** `survival` is LGPL (>= 2), whose
  copyleft is deliberately weaker than the GPL: it does not require a work that merely uses
  the library to adopt the same licence. `MASS` and the base `datasets` package are
  GPL-2 | GPL-3. Where those licences reach the copied values, they continue to apply to
  those values; the rest of this repository remains under the MIT License.
  出典によりライセンスの強さが異なります。survival は LGPL (>= 2) で、GPL より
  コピーレフトが弱く、利用する側の著作物に同一ライセンスを要求しません。MASS と
  base の datasets は GPL-2 | GPL-3 です。当該データに各ライセンスが及ぶ範囲では
  それが維持され、本リポジトリのその他の部分は MIT のままです。
- **Algorithms were implemented from published formulas.** The statistical routines in
  these apps (OLS; IRWLS for logistic regression; the Efron partial likelihood with
  Newton-Raphson, Kaplan-Meier, Schoenfeld residuals and Harrell's concordance for Cox
  regression) were written from the standard published formulas and verified numerically
  against R as a black box. No source code from R or from any R package was copied or
  translated.
  統計計算は公表された数式から実装し、R とは数値比較（ブラックボックス検証）で
  一致を確認したものです。R および R パッケージのソースコードの複製・翻案は
  行っていません。

If you are a rights holder and would like an entry changed or removed, please open an issue.
