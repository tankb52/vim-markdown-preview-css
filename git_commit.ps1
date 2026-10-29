# 解决终端中文乱码
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding = [System.Text.Encoding]::UTF8

# 1. 没变更就跳过
if (-not (git status --porcelain)) {
    Write-Host "✅ 没有需要提交的变更，脚本跳过。" -ForegroundColor Green
    Read-Host "按回车键退出..."
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
git log -n 5 --oneline

# 暂停，防止双击运行窗口闪退
Read-Host "`n操作完成，按回车键退出..."