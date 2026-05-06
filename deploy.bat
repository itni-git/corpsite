@echo off
setlocal
echo Pushing changes to GitHub...

:: Git 저장소 여부 확인
git rev-parse --is-inside-work-tree >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: This directory is not a Git repository.
    goto end
)

git add .
git commit -m "Auto-deploy: Update index.html and assets"
git push origin main

:end
echo.
echo Done!
pause