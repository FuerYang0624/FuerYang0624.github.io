@echo off
echo ==========================================
echo      Automated Deployment Script
echo      For FuerYang0624.github.io
echo ==========================================

:: 1. 添加所有修改到暂存区
echo [1/3] Adding changes...
git add .

:: 2. 提交修改，自动带上当前时间作为备注
echo [2/3] Committing changes...
set "timestamp=%date% %time%"
git commit -m "Update site: %timestamp%"

:: 3. 推送到 GitHub (强制推送，确保覆盖)
echo [3/3] Pushing to GitHub...
git push origin main

echo ==========================================
echo      SUCCESS! Your site is updating.
echo      Check progress at: https://github.com/FuerYang0624/FuerYang0624.github.io/actions
echo ==========================================
pause