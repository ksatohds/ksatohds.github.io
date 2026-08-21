---
layout: default
title: Software
---

<style>
  .lang-toggle-wrap { display: flex; justify-content: flex-start; margin-bottom: 10px; }
  .lang-toggle { display: inline-flex; border: 1px solid var(--color-border); border-radius: 6px; overflow: hidden; font-size: 0.72rem; font-family: var(--font-sans); letter-spacing: 0.04em; }
  .lang-toggle button { background: transparent; border: none; padding: 5px 13px; cursor: pointer; color: var(--color-text-light); font-weight: 500; transition: background 0.15s, color 0.15s; }
  .lang-toggle button:hover { color: var(--color-primary); }
  .lang-toggle button.on { background: var(--color-accent); color: #fff; }
  /* subtle per-section card colours on the LEFT edge (like the laboratory page): R packages (teal), HTML apps (blue), Web apps (amber) */
  .gallery-grid.sw-pkg  .gallery-item { border-left: 4px solid #16a085; background: linear-gradient(135deg, #e8f7f3 0%, var(--color-white) 45%); }
  .gallery-grid.sw-pkg  .gallery-item h3 { color: #0f836b; }
  .gallery-grid.sw-html .gallery-item { border-left: 4px solid #2980b9; background: linear-gradient(135deg, #e8f2fb 0%, var(--color-white) 45%); }
  .gallery-grid.sw-html .gallery-item h3 { color: #21689b; }
  .gallery-grid.sw-web  .gallery-item { border-left: 4px solid #e08a34; background: linear-gradient(135deg, #fdf1e2 0%, var(--color-white) 45%); }
  .gallery-grid.sw-web  .gallery-item h3 { color: #bd6d22; }
  /* general-purpose statistical tools (CART, multiple regression) — not tied to text/DFM data, so a distinct pastel purple */
  .gallery-grid.sw-html .gallery-item.sw-stat { border-left-color: #8e5fc9; background: linear-gradient(135deg, #f2ecfa 0%, var(--color-white) 45%); }
  .gallery-grid.sw-html .gallery-item.sw-stat h3 { color: #6b3fa0; }
</style>

<div class="lang-toggle-wrap">
  <div class="lang-toggle" id="langToggle">
    <button data-lang="en" class="on">EN</button>
    <button data-lang="ja">JA</button>
  </div>
</div>

<div class="section">
  <h2 class="section-title" data-ja="ソフトウェア">Software</h2>
  <p style="color: var(--color-text-light); line-height: 1.8; max-width: 800px;" data-ja="GitHubで公開しているRパッケージ、ブラウザで動くHTMLアプリ、サーバー上で動くWebアプリを紹介します。いずれもインストール不要です。">R packages published on GitHub, plus browser-based HTML apps and a server-hosted web app — no installation required.</p>
</div>

<div class="section">
  <h2 class="section-title" data-ja="Rパッケージ">R packages</h2>
  <div class="gallery-grid sw-pkg">

    <div class="gallery-item">
      <div class="gallery-body">
        <h3>nmfkc</h3>
        <p data-ja="カーネル共変量付き非負値行列因子分解（Non-Negative Matrix Factorization with Kernel Covariates）。CRAN登録済み。">Non-Negative Matrix Factorization with Kernel Covariates. Available on CRAN.</p>
        <div class="gallery-links">
          <a href="https://ksatohds.github.io/nmfkc/" data-ja="ドキュメント">Docs</a>
          <a href="https://github.com/ksatohds/nmfkc">GitHub</a>
          <a href="https://cran.r-project.org/web/packages/nmfkc/index.html">CRAN</a>
        </div>
      </div>
    </div>

    <div class="gallery-item">
      <div class="gallery-body">
        <h3>ljmds</h3>
        <p data-ja="経時的な2値データのための局所Jaccard多次元尺度構成法（Local Jaccard MDS for Longitudinal Binary Data）。">Local Jaccard MDS for Longitudinal Binary Data.</p>
        <div class="gallery-links">
          <a href="https://ksatohds.github.io/ljmds/" data-ja="ドキュメント">Docs</a>
          <a href="https://github.com/ksatohds/ljmds">GitHub</a>
        </div>
      </div>
    </div>

    <div class="gallery-item">
      <div class="gallery-body">
        <h3>nolap</h3>
        <p data-ja="散布図のデータ点が重ならないように配置する（Non-overlapping arrangement of scatter plot）。">Non-overlapping arrangement of scatter-plot points.</p>
        <div class="gallery-links">
          <a href="https://ksatohds.github.io/nolap/" data-ja="ドキュメント">Docs</a>
          <a href="https://github.com/ksatohds/nolap">GitHub</a>
        </div>
      </div>
    </div>

    <div class="gallery-item">
      <div class="gallery-body">
        <h3>pord</h3>
        <p data-ja="同一のK段階尺度で測った対のカテゴリカルデータ（例：期待度と達成度）に対する正確条件付き検定（Exact Conditional Tests for Paired Ordinal Data on a Square Table）。両側の周辺度数で条件付けたFisherの正確検定の一般化で、動的計画法により正確な帰無分布を求めます。">Exact conditional tests for paired ordinal data recorded on the same K-point scale (e.g. expectation vs. achievement). A generalization of Fisher's exact test conditioning on both margins, with the exact null distribution obtained by dynamic programming.</p>
        <div class="gallery-links">
          <a href="https://github.com/ksatohds/pord">GitHub</a>
        </div>
      </div>
    </div>

  </div>
</div>

<div class="section">
  <h2 class="section-title" data-ja="HTMLアプリ">HTML apps</h2>
  <p style="color: var(--color-text-light); line-height: 1.8; max-width: 800px;" data-ja="いずれもインストール不要。データはブラウザ内で処理され、外部に送信されません。各アプリは日本語・英語の表示切替に対応しています。">All run without installation. Your data is processed in the browser and never uploaded. Each app has its own Japanese/English toggle.</p>
  <p style="color: var(--color-text-light); line-height: 1.8; max-width: 800px; font-size: 0.92rem;" data-ja="各アプリに収録しているデモデータの出典とライセンスは <a href='https://github.com/ksatohds/ksatohds.github.io/blob/main/THIRD-PARTY-DATA.md' target='_blank' rel='noopener'>第三者データについて</a> にまとめています。">The provenance and licences of the demo data bundled with each app are listed in <a href="https://github.com/ksatohds/ksatohds.github.io/blob/main/THIRD-PARTY-DATA.md" target="_blank" rel="noopener">THIRD-PARTY-DATA.md</a>.</p>

  <div style="background: var(--color-white); border: 1px solid var(--color-border); border-radius: 6px; padding: 16px 20px; margin: 8px 0 26px; max-width: 800px;">
    <p style="margin: 0 0 8px; font-weight: 600; color: var(--color-primary);" data-ja="テキストから可視化まで、CSVでつながります">From text to visuals — connected by one CSV</p>
    <p style="margin: 0 0 10px; color: var(--color-text-light); line-height: 1.85;" data-ja="まず「テキスト解析」で文書単語行列（DFM）を作り、CSVに出力します。その同じCSVを、下の3つのアプリにそのまま読み込めます。生のテキストから、ワードクラウド・共起ネットワーク・バイプロット・グループ別トピックまで、コードを書かずに一気通貫で分析できます。">First, the Text analysis app builds a document-feature matrix (DFM) from your text and exports it as CSV. That same CSV loads directly into the three apps below — taking you from raw text to word clouds, co-occurrence networks, biplots, and group-wise topics without writing any code.</p>
    <p style="margin: 0; color: var(--color-text-light); line-height: 1.85; font-family: var(--font-mono, monospace); font-size: 0.86rem;" data-ja="テキスト解析（DFM作成）→ ①DFMの可視化 ②対応分析 ③NMF・トピックモデル">Text analysis (build DFM) → ① DFM visualization ② Correspondence analysis ③ NMF · Topic model</p>
  </div>

  <div class="gallery-grid sw-html">

    <div class="gallery-item">
      <div class="gallery-body">
        <h3 data-ja="テキスト解析（文書単語行列 DFM）">Text analysis (Document-Feature Matrix)</h3>
        <p data-ja="日本語テキストを解析して文書単語行列（DFM）を作成します。連接語の検出や語の削除・置換に対応し、結果はCSVで出力できます。">Tokenize Japanese text and build a document-feature matrix (DFM). Detect collocations, remove or replace words, and export to CSV.</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/text_dfm.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
          <a href="https://github.com/ksatohds/ksatohds.github.io/tree/main/html_app">GitHub</a>
        </div>
      </div>
    </div>

    <div class="gallery-item">
      <div class="gallery-body">
        <h3 data-ja="DFMの可視化（ワードクラウド・共起ネットワーク）">DFM visualization (word cloud &amp; co-occurrence network)</h3>
        <p data-ja="「テキスト解析」で出力したDFMのCSVを読み込み、ワードクラウドと共起ネットワークを描画します。表示語数・しきい値・コミュニティ検出法を対話的に調整できます。">Loads the DFM CSV exported by the Text analysis app and draws a word cloud and a co-occurrence network. Adjust the number of words shown, thresholds, and community-detection methods interactively.</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/dfm_viz.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
          <a href="https://github.com/ksatohds/ksatohds.github.io/tree/main/html_app">GitHub</a>
        </div>
      </div>
    </div>

    <div class="gallery-item">
      <div class="gallery-body">
        <h3 data-ja="対応分析（コレスポンデンス分析）">Correspondence analysis</h3>
        <p data-ja="属性列付きのDFM（「テキスト解析」で作成）を読み込み、属性×語のクロス集計に対応分析を適用します。カテゴリと語を同一平面に布置するバイプロットを描きます。">Loads a DFM with attribute columns (from the Text analysis app), applies correspondence analysis to the attribute × word crosstab, and draws a biplot placing categories and words on the same plane.</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/dfm_ca.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
          <a href="https://github.com/ksatohds/ksatohds.github.io/tree/main/html_app">GitHub</a>
        </div>
      </div>
    </div>

    <div class="gallery-item">
      <div class="gallery-body">
        <h3 data-ja="非負値行列因子分解（NMF・トピックモデル）">Non-negative Matrix Factorization (NMF · Topic model)</h3>
        <p data-ja="非負値行列因子分解（NMF）を実行します。「トピックモデル」タブは属性列付きのDFM（「テキスト解析」で作成）を読み込みグループ別のトピック構成を、「行列分解」タブは一般の行列をヒートマップ・両側クラスタリングで示します。">Runs non-negative matrix factorization (NMF). The Topic model tab reads a DFM with attribute columns (from the Text analysis app) and shows topic composition by group; the Matrix factorization tab takes any matrix and shows heatmaps &amp; two-way clustering.</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/nmf_app.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
          <a href="https://github.com/ksatohds/ksatohds.github.io/tree/main/html_app">GitHub</a>
        </div>
      </div>
    </div>

    <div class="gallery-item sw-stat">
      <div class="gallery-body">
        <h3 data-ja="分類木（CART）">Classification tree (CART)</h3>
        <p data-ja="分類木（CART）を構築し、決定ルール・混同行列・変数重要度を表示します。">Build a CART classification tree and view decision rules, a confusion matrix, and variable importance.</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/class_tree.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
          <a href="https://github.com/ksatohds/ksatohds.github.io/tree/main/html_app">GitHub</a>
        </div>
      </div>
    </div>

    <div class="gallery-item sw-stat">
      <div class="gallery-body">
        <h3 data-ja="重回帰分析">Multiple linear regression</h3>
        <p data-ja="最小二乗法（OLS）で重回帰モデルを推定します。説明変数にカテゴリカルな列があれば自動検出し、ダミー変数化して用いることができます。RのSummary(lm(...))に準じた出力形式です。">Fits a multiple linear regression model by ordinary least squares (OLS). Categorical (text) features are auto-detected and can be dummy-coded. Output is formatted like R's summary(lm(...)).</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/linear_model.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
          <a href="https://github.com/ksatohds/ksatohds.github.io/tree/main/html_app">GitHub</a>
        </div>
      </div>
    </div>

    <div class="gallery-item sw-stat">
      <div class="gallery-body">
        <h3 data-ja="ロジスティック回帰">Logistic regression</h3>
        <p data-ja="IRWLS（フィッシャー・スコアリング）で最尤推定します。目的変数は2値でなくてもよく、カテゴリカルな列を選んで「1とする値」を指定すれば、それ以外の値は0として扱われます。オッズ比・ROC曲線・混同行列も表示します。Rのsummary(glm(..., family=&quot;binomial&quot;))の出力を再現します。">Fits a logistic regression by maximum likelihood (IRWLS / Fisher scoring). The response need not be binary: pick any categorical column and choose which value counts as 1, and every other value becomes 0. Also reports odds ratios, an ROC curve and a confusion matrix. Output reproduces R's summary(glm(..., family="binomial")).</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/logistic_model.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
          <a href="https://github.com/ksatohds/ksatohds.github.io/tree/main/html_app">GitHub</a>
        </div>
      </div>
    </div>

    <div class="gallery-item sw-stat">
      <div class="gallery-body">
        <h3 data-ja="コックス比例ハザードモデル（生存時間解析）">Cox proportional hazards model (survival analysis)</h3>
        <p data-ja="目的変数の代わりに追跡期間と打ち切り指標を指定して、コックス回帰を当てはめます。同時発生はEfron法（Rの既定）で扱い、ニュートン・ラフソン法で部分尤度を最大化します。ハザード比と95%信頼区間、一致度(Concordance)、尤度比・Wald・スコア(ログランク)検定を表示し、比例ハザード性の確認用にカプラン・マイヤー曲線・log-logプロット・Schoenfeld残差も描画します。Rのsummary(coxph(...))の出力を再現します。">Fits a Cox regression from a follow-up time and a censoring indicator instead of a single response. Ties use the Efron approximation (R's default) and the partial likelihood is maximised by Newton-Raphson. Reports hazard ratios with 95% confidence intervals, the concordance, and the likelihood-ratio, Wald and score (logrank) tests, plus Kaplan-Meier, log-log and Schoenfeld-residual plots for checking proportional hazards. Output reproduces R's summary(coxph(...)).</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/coxph_model.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
          <a href="https://github.com/ksatohds/ksatohds.github.io/tree/main/html_app">GitHub</a>
        </div>
      </div>
    </div>

  </div>
</div>

<div class="section">
  <h2 class="section-title" data-ja="Webアプリ">Web apps</h2>
  <p style="color: var(--color-text-light); line-height: 1.8; max-width: 800px;" data-ja="外部サーバー上で動作するアプリです。">Apps that run on an external server (R Shiny).</p>
  <div class="gallery-grid sw-web">

    <div class="gallery-item">
      <div class="gallery-body">
        <h3 data-ja="回帰木・分類木 CART">Regression &amp; Classification Tree (CART)</h3>
        <p data-ja="回帰木・分類木（CART）を構築する R Shiny アプリ。">An R Shiny app that builds regression and classification trees (CART).</p>
        <div class="gallery-links">
          <a href="https://kenichi-satoh.shinyapps.io/CART/" data-ja="アプリを開く">Open app</a>
        </div>
      </div>
    </div>

  </div>
</div>

<script>
(function () {
  var els = document.querySelectorAll('[data-ja]');
  // capture the (default) English text of each element
  els.forEach(function (el) { el.setAttribute('data-en', el.textContent); });
  function apply(lang) {
    els.forEach(function (el) {
      el.textContent = (lang === 'ja') ? el.getAttribute('data-ja') : el.getAttribute('data-en');
    });
    document.querySelectorAll('#langToggle button').forEach(function (b) {
      b.classList.toggle('on', b.getAttribute('data-lang') === lang);
    });
    document.documentElement.setAttribute('lang', lang);
  }
  document.getElementById('langToggle').addEventListener('click', function (e) {
    var b = e.target.closest('button');
    if (b) apply(b.getAttribute('data-lang'));
  });
  apply('en'); // default: English
})();
</script>
