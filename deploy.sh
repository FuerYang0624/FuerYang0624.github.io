#!/usr/bin/env bash
# 一键发布到 GitHub Pages → https://fueryang0624.github.io/
set -euo pipefail

cd "$(dirname "$0")"

SITE_URL="https://fueryang0624.github.io/"
BRANCH="${DEPLOY_BRANCH:-main}"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🚀 一键发布学术主页"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 可选：本地先构建检查
if command -v pnpm >/dev/null 2>&1; then
  echo "📦 本地构建检查..."
  pnpm run build
  echo "✅ 本地构建通过"
  echo ""
fi

if ! git rev-parse --git-dir >/dev/null 2>&1; then
  echo "❌ 当前目录不是 Git 仓库。请先 git init 并关联 GitHub 远程。"
  exit 1
fi

if ! git remote get-url origin >/dev/null 2>&1; then
  echo "❌ 未配置 origin 远程。示例："
  echo "   git remote add origin git@github.com:fueryang0624/MyAcademicWeb.git"
  exit 1
fi

echo "📝 当前改动："
git status --short
echo ""

read -r -p "确认提交并推送到 origin/${BRANCH}？(y/N) " confirm
if [[ ! "${confirm}" =~ ^[Yy]$ ]]; then
  echo "已取消。"
  exit 0
fi

git add -A
if git diff --cached --quiet; then
  echo "ℹ️  没有需要提交的改动。"
else
  MSG="site: update $(date '+%Y-%m-%d %H:%M')"
  git commit -m "${MSG}"
  echo "✅ 已提交: ${MSG}"
fi

echo ""
echo "⬆️  推送到 GitHub..."
git push origin "${BRANCH}"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  ✨ 推送成功！"
echo "  GitHub Actions 将自动构建并部署（约 2–5 分钟）"
echo "  🌐 ${SITE_URL}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
