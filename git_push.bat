@echo off

:: *
:: * File Name       : git_push.bat
:: * Version         : 0.0.1
:: * Created Time    : 2026-10-29 周四 20:26:10
:: * Modified Time   : 2026-10-29 周四 20:26:32
:: * Author          : Knat
:: * Copyright       : (C) 2004-2026 Knat. All rights reserved.
:: * Description     : 让deepseek帮我写的同步脚本。
:: *

:: 这里是批处理脚本的实际内容

@echo off
set /p commit=Enter commit message: 
if "%commit%"=="" set commit=auto sync

for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyyMMdd-HHmmss"') do set curtime=%%i

git add .
git commit -m "%curtime%：%commit%"
git push
