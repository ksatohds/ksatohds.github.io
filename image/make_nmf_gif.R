# make_nmf_gif.R
# NMF の反復収束過程を GIF アニメーションとして可視化する
# 行列積のレイアウト: Y ≈ X × B
#
#              B (Q×N)
#         ┌───────────┐
#         │  2 × 6    │
#         └───────────┘
#   X (P×Q)   Y (P×N)
# ┌──────┐ ┌───────────┐
# │ 6×2  │ │  6 × 6    │
# └──────┘ └───────────┘

if (!requireNamespace("gifski", quietly = TRUE)) {
  install.packages("gifski", repos = "https://cloud.r-project.org")
}
library(gifski)

# --- 1. データ準備 ---
Y <- matrix(c(
  1, 1, 1, 0, 0, 0,  # Alice
  0, 0, 0, 1, 1, 1,  # Bob
  1, 1, 0, 0, 0, 0,  # Carol
  0, 0, 0, 1, 0, 1,  # Dave
  1, 0, 1, 0, 1, 0,  # Eve
  0, 1, 0, 1, 1, 1   # Frank
), nrow = 6, byrow = TRUE)
rownames(Y) <- c("Alice", "Bob", "Carol", "Dave", "Eve", "Frank")
colnames(Y) <- c("Cake", "Choco", "Cookie", "Salad", "Yogurt", "Juice")

# nmfkc の慣例: t(Y) = X %*% B
# t(Y): P(6 products) x N(6 customers)
# X:    P(6 products) x Q(2 patterns)
# B:    Q(2 patterns) x N(6 customers)
Yt <- t(Y)
P <- nrow(Yt)  # 6 products
N <- ncol(Yt)  # 6 customers
Q <- 2
eps <- 1e-10

# --- 2. NMF 初期化 ---
set.seed(42)
X <- matrix(runif(P * Q), nrow = P, ncol = Q)
X <- sweep(X, 2, colSums(X), "/")
B <- matrix(runif(Q * N), nrow = Q, ncol = N)

# --- 3. スナップショット ---
snap_iters <- 1:20
max_iter <- max(snap_iters)
snapshots <- list()

# iter=0: 初期状態（更新前）を保存
snapshots[["0"]] <- list(X = X, B = B)

for (i in 1:max_iter) {
  XB <- X %*% B
  # X の更新 (EU divergence)
  X <- X * ((Yt %*% t(B)) / (XB %*% t(B) + eps))
  X <- sweep(X, 2, colSums(X), "/")
  # B の更新
  XB <- X %*% B
  B <- B * ((t(X) %*% Yt) / (t(X) %*% XB + eps))

  if (i %in% snap_iters) {
    snapshots[[as.character(i)]] <- list(X = X, B = B)
  }
}

# --- 4. カラーパレット ---
col_Y     <- colorRampPalette(c("gray90", "steelblue"))(64)   # Y: 青系
col_basis <- colorRampPalette(c("gray95", "tomato"))(64)      # X: 赤系
col_coeff <- colorRampPalette(c("gray95", "forestgreen"))(64) # B: 緑系

# --- 5. フレーム描画関数 ---
draw_frame <- function(Yt, Xmat, Bmat, iter_label, filepath) {
  # Yt: P x N (var x ind),  Xmat: P x Q (var x basis),  Bmat: Q x N (basis x ind)
  # 表示は行=縦(y軸), 列=横(x軸) の標準的な行列表示
  # image(x, y, z): z[i,j] を (x[i], y[j]) にプロット
  # → 行を y 軸、列を x 軸にするには image(1:ncol, 1:nrow, t(M[nrow:1,]))

  png(filepath, width = 820, height = 780, res = 100)

  # レイアウト: 行列積 Y = X × B の配置
  # (1,1)=空白  (1,2)=B(Q行×N列)   上段: 高さ ∝ Q
  # (2,1)=X(P行×Q列) (2,2)=Y(P行×N列) 下段: 高さ ∝ P
  # 幅: 左列 ∝ Q, 右列 ∝ N
  mar_left <- 3
  mar_top  <- 2
  layout(matrix(c(4, 1, 2, 3), nrow = 2, byrow = TRUE),
         widths  = c(Q + mar_left, N),
         heights = c(Q + mar_top, P))

  # --- (1,2) B: 係数行列 [Q x N] (上段右) ---
  # 行=basis(y軸), 列=individuals(x軸)
  par(mar = c(0.5, 0.5, 4, 4))
  image(1:N, 1:Q, t(Bmat[Q:1, ]), col = col_coeff,
        zlim = c(0, max(Bmat) * 1.01 + 0.01),
        xlab = "", ylab = "", axes = FALSE,
        main = "")
  axis(3, at = 1:N, labels = colnames(Yt), las = 2, cex.axis = 0.8)
  axis(2, at = 1:Q, labels = paste0("P", Q:1), las = 1, cex.axis = 0.8)
  mtext("B (basis x ind)", side = 3, line = -1.2, cex = 0.9, font = 2)
  for (r in 1:Q) for (cc in 1:N) {
    val <- Bmat[r, cc]
    text(cc, Q + 1 - r, sprintf("%.2f", val), cex = 0.75,
         col = ifelse(val > max(Bmat) * 0.5, "white", "black"))
  }
  box()

  # --- (2,1) X: 基底行列 [P x Q] (下段左) ---
  # 行=variables(y軸), 列=basis(x軸)
  par(mar = c(3, 5, 0.5, 0.5))
  image(1:Q, 1:P, t(Xmat[P:1, ]), col = col_basis,
        zlim = c(0, max(Xmat) * 1.01 + 0.01),
        xlab = "", ylab = "", axes = FALSE,
        main = "")
  axis(1, at = 1:Q, labels = paste0("P", 1:Q), las = 1, cex.axis = 0.8)
  axis(2, at = 1:P, labels = rev(rownames(Yt)), las = 1, cex.axis = 0.8)
  mtext("X (var x basis)", side = 3, line = -1.2, cex = 0.9, font = 2)
  for (r in 1:P) for (cc in 1:Q) {
    val <- Xmat[r, cc]
    text(cc, P + 1 - r, sprintf("%.2f", val), cex = 0.8,
         col = ifelse(val > max(Xmat) * 0.5, "white", "black"))
  }
  box()

  # --- (2,2) Y: 観測行列 [P x N] (下段右) ---
  # 行=variables(y軸), 列=individuals(x軸)
  par(mar = c(3, 0.5, 0.5, 4))
  image(1:N, 1:P, t(Yt[P:1, ]), col = col_Y, zlim = c(0, 1),
        xlab = "", ylab = "", axes = FALSE,
        main = "")
  axis(1, at = 1:N, labels = colnames(Yt), las = 2, cex.axis = 0.8)
  axis(4, at = 1:P, labels = rev(rownames(Yt)), las = 1, cex.axis = 0.8)
  mtext("Y (var x ind)", side = 3, line = -1.2, cex = 0.9, font = 2)
  for (r in 1:P) for (cc in 1:N) {
    text(cc, P + 1 - r, Yt[r, cc], cex = 0.85,
         col = ifelse(Yt[r, cc] > 0.5, "white", "black"))
  }
  box()

  # --- (1,1) 空白パネル (上段左) ---
  par(mar = c(0, 0, 0, 0))
  plot.new()
  text(0.5, 0.55, expression(Y %~~% X %*% B), cex = 1.6)
  text(0.5, 0.25, paste0("iter = ", iter_label), cex = 1.4)

  dev.off()
}

# --- 6. フレーム生成 ---
tmp_dir <- file.path(getwd(), "nmf_frames")
dir.create(tmp_dir, showWarnings = FALSE)
old_files <- list.files(tmp_dir, pattern = "\\.png$", full.names = TRUE)
if (length(old_files) > 0) file.remove(old_files)

png_files <- c()
for (s in names(snapshots)) {
  fpath <- file.path(tmp_dir, sprintf("nmf_frame_%04d.png", as.integer(s)))
  draw_frame(Yt, snapshots[[s]]$X, snapshots[[s]]$B, s, fpath)
  png_files <- c(png_files, fpath)
}

# iter=0（初期状態）を5回繰り返して長めに見せる
first_file <- png_files[1]
first_dups <- c()
for (j in 1:5) {
  dup <- file.path(tmp_dir, sprintf("nmf_frame_init_%d.png", j))
  file.copy(first_file, dup, overwrite = TRUE)
  first_dups <- c(first_dups, dup)
}
png_files <- c(first_dups, png_files)

# 最終フレームを5回繰り返す
last_file <- tail(png_files, 1)
for (j in 1:5) {
  dup <- file.path(tmp_dir, sprintf("nmf_frame_final_%d.png", j))
  file.copy(last_file, dup, overwrite = TRUE)
  png_files <- c(png_files, dup)
}

# --- 7. GIF 生成 ---
out_gif <- file.path(getwd(), "nmf_convergence.gif")
gifski(png_files, gif_file = out_gif, width = 820, height = 780, delay = 0.4)
cat("GIF saved to:", out_gif, "\n")
cat("Total frames:", length(png_files), "\n")
