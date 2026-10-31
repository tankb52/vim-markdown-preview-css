<#
# * File Name       : git_commit.ps1
# * Version         : 0.0.1
# * Created Time    : 2026-10-31 周六 14:35:23
# * Modified Time   : 2026-10-31 周六 14:37:47
# * Author          : Knat
# * Copyright       : (C) 2004-2026 Knat. All rights reserved.
# * Description     : 自动提交脚本。
# *
#>

# 这里是PowerShell脚本的实际内容
#
# 解决终端中文乱码
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding = [System.Text.Encoding]::UTF8

# 1. 没变更就跳过
if (-not (git status --porcelain)) {
    Write-Host "✅ 没有需要提交的变更，脚本跳过。" -ForegroundColor Green
    Write-Host "按任意键退出..." -NoNewline
    $null = [Console]::ReadKey($true)
    exit
}

# 获取时间戳
$curtime = Get-Date -Format "yyyyMMdd-HHmmss"

# 显示当前状态
git status

# 获取提交信息
$commit = Read-Host "请输入提交信息"
if ([string]::IsNullOrWhiteSpace($commit)) { $commit = "auto sync" } # 防止直接回车导致空信息

# 提交并推送
git add .
git commit -m "$curtime：$commit"
git push

# 打印最近 5 条日志
Write-Host "`n📋 最近提交日志：" -ForegroundColor Cyan
git log --color --graph --pretty=format:'%Cgreen%<(16,trunc)%ah%Creset | %C(yellow)%h%Creset | %Cblue%<(8,trunc)%an%Creset | %C(cyan)%d%Creset%s' --abbrev-commit -n 6

# 暂停，防止双击运行窗口闪退
Write-Host "`n操作完成，按任意键退出..." -NoNewline
$null = [Console]::ReadKey($true)
