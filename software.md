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
</style>

<div class="lang-toggle-wrap">
  <div class="lang-toggle" id="langToggle">
    <button data-lang="en" class="on">EN</button>
    <button data-lang="ja">JA</button>
  </div>
</div>

<div class="section">
  <h2 class="section-title" data-ja="ソフトウェア">Software</h2>
  <p style="color: var(--color-text-light); line-height: 1.8; max-width: 800px;" data-ja="GitHubで公開しているRパッケージと、インストール不要でブラウザだけで動くWebアプリを紹介します。">R packages published on GitHub, plus web apps that run entirely in your browser — no installation required.</p>
</div>

<div class="section">
  <h2 class="section-title" data-ja="Rパッケージ">R packages</h2>
  <div class="gallery-grid">

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

  </div>
</div>

<div class="section">
  <h2 class="section-title" data-ja="HTMLアプリ">HTML apps</h2>
  <p style="color: var(--color-text-light); line-height: 1.8; max-width: 800px;" data-ja="いずれもインストール不要。データはブラウザ内で処理され、外部に送信されません。各アプリは日本語・英語の表示切替に対応しています。">All run without installation. Your data is processed in the browser and never uploaded. Each app has its own Japanese/English toggle.</p>
  <div class="gallery-grid">

    <div class="gallery-item">
      <div class="gallery-body">
        <h3 data-ja="テキスト解析（文書単語行列 DFM）">Text analysis (Document-Feature Matrix)</h3>
        <p data-ja="日本語テキストを解析して文書単語行列（DFM）を作成します。連接語の検出や語の削除・置換に対応し、結果はCSVで出力できます。">Tokenize Japanese text and build a document-feature matrix (DFM). Detect collocations, remove or replace words, and export to CSV.</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/text_dfm.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
        </div>
      </div>
    </div>

    <div class="gallery-item">
      <div class="gallery-body">
        <h3 data-ja="DFMの可視化（ワードクラウド・共起ネットワーク）">DFM visualization (word cloud &amp; co-occurrence network)</h3>
        <p data-ja="文書単語行列からワードクラウドと共起ネットワークを描画します。しきい値やコミュニティ検出法を対話的に調整できます。">Draw a word cloud and a co-occurrence network from a DFM. Adjust thresholds and community-detection methods interactively.</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/dfm_viz.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
        </div>
      </div>
    </div>

    <div class="gallery-item">
      <div class="gallery-body">
        <h3 data-ja="対応分析（コレスポンデンス分析）">Correspondence analysis</h3>
        <p data-ja="属性×語のクロス集計に対応分析を適用し、カテゴリと語を同一平面に布置するバイプロットを描きます。">Apply correspondence analysis to an attribute × word crosstab and draw a biplot placing categories and words on the same plane.</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/dfm_ca.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
        </div>
      </div>
    </div>

    <div class="gallery-item">
      <div class="gallery-body">
        <h3 data-ja="非負値行列因子分解（NMF・トピックモデル）">Non-negative Matrix Factorization (NMF · Topic model)</h3>
        <p data-ja="非負値行列因子分解（NMF）を実行し、「トピックモデル」（グループ別トピック構成）と「行列分解」（ヒートマップ・クラスタリング）の2つの見方で結果を提示します。">Run NMF and view the results in two tabs: a topic model (topic composition by group) and matrix factorization (heatmaps &amp; clustering).</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/nmf_app.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
        </div>
      </div>
    </div>

    <div class="gallery-item">
      <div class="gallery-body">
        <h3 data-ja="分類木（CART）">Classification tree (CART)</h3>
        <p data-ja="分類木（CART）を構築し、決定ルール・混同行列・変数重要度を表示します。">Build a CART classification tree and view decision rules, a confusion matrix, and variable importance.</p>
        <div class="gallery-links">
          <a href="{{ '/html_app/class_tree.html' | relative_url }}" data-ja="アプリを開く">Open app</a>
        </div>
      </div>
    </div>

  </div>
</div>

<div class="section">
  <h2 class="section-title" data-ja="Webアプリ">Web apps</h2>
  <p style="color: var(--color-text-light); line-height: 1.8; max-width: 800px;" data-ja="外部サーバー上で動作するアプリです。">Apps that run on an external server (R Shiny).</p>
  <div class="gallery-grid">

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
