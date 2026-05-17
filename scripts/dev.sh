#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
export PATH="$(pwd)/node_modules/.bin:$PATH"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🛰️  Fuer Yang — 学术主页本地预览"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  ⏳ 首次启动需编译 Tailwind，约 2–3 分钟，请耐心等待。"
echo "  ✅ 看到 “Web Server is available” 后再打开浏览器。"
echo ""
echo "  🌐 地址: http://localhost:1313/"
echo "  ⏹  停止: Ctrl+C"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# macOS: 后台等待服务就绪后自动打开浏览器
if [[ "$(uname -s)" == "Darwin" ]]; then
  (
    for _ in $(seq 1 120); do
      if curl -sf -o /dev/null "http://127.0.0.1:1313/" 2>/dev/null; then
        open "http://localhost:1313/"
        echo "  🚀 已在浏览器中打开 http://localhost:1313/"
        break
      fi
      sleep 2
    done
  ) &
fi

exec hugo server --disableFastRender --bind 127.0.0.1 --baseURL http://localhost:1313/
