#!/bin/bash

# 🚀 一键推送脚本 - 只需运行: bash deploy.sh

echo "📝 准备推送你的网站改动到GitHub..."
echo ""

# 第1步：查看改动了什么
echo "✅ 步骤1: 检查改动"
git status
echo ""

# 第2步：添加所有改动
echo "✅ 步骤2: 添加所有文件"
git add .
echo "已添加所有改动"
echo ""

# 第3步：创建提交信息
echo "✅ 步骤3: 创建提交"
COMMIT_MESSAGE="更新网站: $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$COMMIT_MESSAGE"
echo "提交信息: $COMMIT_MESSAGE"
echo ""

# 第4步：推送到GitHub
echo "✅ 步骤4: 推送到GitHub..."
git push origin main

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✨ 推送成功！"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "你的网站将在 1-2 分钟内更新到："
echo "🌐 https://fueryang0624.github.io/"
echo ""
echo "提示: 刷新浏览器查看最新内容"
echo ""
