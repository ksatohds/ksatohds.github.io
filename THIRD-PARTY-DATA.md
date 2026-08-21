# Third-party data notice / 第三者データについて

The code in this repository is released under the MIT License (see `LICENSE`).

The browser apps under `html_app/` embed a few small example data sets so that they work
without any download. Those data sets are **not** authored here: they originate from R
packages and from the primary publications listed below, and they are reproduced
**unmodified** unless a change is noted.

本リポジトリのコードは MIT ライセンスです（`LICENSE` 参照）。ただし `html_app/` 配下の
アプリに埋め込んでいるデモ用データは当方の著作物ではなく、下記の R パッケージおよび
一次文献に由来します。記載のない限り、値は改変せずに収録しています。

---

## Embedded data sets / 収録データ

| App | Data | R package | Package licence | Primary source |
|---|---|---|---|---|
| `coxph_model.html` | `aml` | boot | **Unlimited** | Embury et al. (1977), Stanford University; values from Miller, R.G. (1981), *Survival Analysis*, John Wiley |
| `coxph_model.html` | `pharmacoSmoking` | asaur | **CC0** (public domain dedication) | Companion data for Dirk F. Moore, *Applied Survival Analysis Using R*, Springer |
| `class_tree.html` | `iris` | datasets | Part of R (GPL-2 \| GPL-3) | Fisher (1936); Anderson (1935) |
| `linear_model.html` | `cars` | datasets | Part of R (GPL-2 \| GPL-3) | Ezekiel (1930) |
| `linear_model.html` | `ToothGrowth` | datasets | Part of R (GPL-2 \| GPL-3) | Crampton (1947) |
| `logistic_model.html` | `infert` | datasets | Part of R (GPL-2 \| GPL-3) | Trichopoulos et al. (1976) |
| `logistic_model.html` | `iris` | datasets | Part of R (GPL-2 \| GPL-3) | Fisher (1936); Anderson (1935) |

### Changes made / 加えた変更

- `aml` — none. Reproduced exactly as distributed (`time` = weeks in complete remission,
  `cens` = 1 relapse / 0 right-censored, `group` = 1 maintenance chemotherapy / 2 none).
  改変なし。
- `pharmacoSmoking` — restricted to the 113 patients with `ttr > 0` and to six columns
  (`ttr`, `relapse`, `grp`, `employment`, `ageGroup2`, `longestNoSmoke2`), where
  `longestNoSmoke2 = 1` when `longestNoSmoke >= 100`. This mirrors the analysis in the
  accompanying lecture script. CC0 imposes no restriction on such changes.
  講義スクリプトに合わせた行・列の絞り込みと2値変数の作成を行っています。
- `infert` — the matched-set identifiers `stratum` and `pooled.stratum` are omitted
  (design bookkeeping, not covariates).

Package versions used when the data were extracted: boot 1.3-32, asaur 0.50,
datasets (R 4.5.2). `boot` is a *recommended* package, i.e. it is distributed with R itself;
`asaur` is a CRAN package.

---

## Notes / 補足

- **Licences differ in strength, and the survival demos deliberately use the weakest.**
  `boot` is released under the licence "Unlimited" and `asaur` under CC0, a dedication to
  the public domain; neither places conditions on reuse. The base `datasets` package is
  GPL-2 | GPL-3. Where a licence reaches the copied values it continues to apply to those
  values; the rest of this repository remains under the MIT License.
  ライセンスの強さは出典により異なります。生存時間解析のデモには最も緩いもの（boot の
  Unlimited、asaur の CC0＝パブリックドメイン献呈）を選んでいます。base の datasets は
  GPL-2 | GPL-3 です。当該データにライセンスが及ぶ範囲ではそれが維持され、本リポジトリ
  のその他の部分は MIT のままです。
- **The values are factual measurements**, published in the works cited above and
  reproduced with attribution for teaching purposes.
  データは上記文献で公表された測定値（事実）であり、教育目的で出典を明示しています。
- **Algorithms were implemented from published formulas.** The statistical routines in
  these apps (OLS; IRWLS for logistic regression; the Efron partial likelihood with
  Newton-Raphson, Kaplan-Meier, Schoenfeld residuals and Harrell's concordance for Cox
  regression) were written from the standard published formulas and verified numerically
  against R as a black box. No source code from R or from any R package was copied or
  translated.
  統計計算は公表された数式から実装し、R とは数値比較（ブラックボックス検証）で一致を
  確認したものです。R および R パッケージのソースコードの複製・翻案は行っていません。

If you are a rights holder and would like an entry changed or removed, please open an issue.
