# 进度自动检查
# 用法：在 E:\视频号 下运行  .\status.ps1
# 它不修改任何文件，只按目录里的实际文件推导当前进度

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$products = Get-ChildItem $root -Directory | Where-Object { $_.Name -notin @('_template', '.git') }

if (-not $products) { Write-Host "没有产品目录" -ForegroundColor Yellow; exit }

foreach ($p in $products) {
    Write-Host ""
    Write-Host "=== $($p.Name) ===" -ForegroundColor Cyan

    $checks = @(
        @{ Name = '产品实拍图'; Path = "assets\product-01-packaging-tray.jpg"; Hint = '手机拍，放进 assets' },
        @{ Name = '首帧图';     Path = "assets\firstframe-pavilion.jpg";        Hint = '豆包文生图出图，裁掉水印' },
        @{ Name = '段1视频';    Path = "output\clip-01.mp4";                    Hint = '即梦图生视频，5 秒' },
        @{ Name = '段1尾帧';    Path = "assets\tail-01.jpg";                    Hint = 'clip-01 出片后截最后一帧' },
        @{ Name = '段2视频';    Path = "output\clip-02.mp4";                    Hint = '用 tail-01 当首帧' },
        @{ Name = '段2尾帧';    Path = "assets\tail-02.jpg";                    Hint = 'clip-02 出片后截最后一帧' },
        @{ Name = '段3视频';    Path = "output\clip-03.mp4";                    Hint = '用 tail-02 当首帧' },
        @{ Name = '实拍插入镜'; Path = "output\insert-product.jpg";             Hint = '产品图裁掉文字，放剪映做 1.2 秒' },
        @{ Name = '成片';       Path = "output\*-15s-v*.mp4";                   Hint = '剪映拼接导出 1080×1920' },
        @{ Name = '封面';       Path = "output\cover-9x16.jpg";                 Hint = '竖屏封面' }
    )

    $next = $null
    foreach ($c in $checks) {
        $hit = Get-ChildItem (Join-Path $p.FullName $c.Path) -ErrorAction SilentlyContinue
        if ($hit) {
            Write-Host ("  [x] {0,-10} -> {1}" -f $c.Name, $hit.Name) -ForegroundColor Green
        } else {
            Write-Host ("  [ ] {0,-10}   {1}" -f $c.Name, $c.Hint) -ForegroundColor DarkGray
            if (-not $next) { $next = $c }
        }
    }

    Write-Host ""
    if ($next) {
        Write-Host "  >> 下一步：$($next.Name) — $($next.Hint)" -ForegroundColor Yellow
    } else {
        Write-Host "  >> 全部完成" -ForegroundColor Green
    }

    $comp = Get-ChildItem (Join-Path $p.FullName 'compliance') -File -ErrorAction SilentlyContinue
    if (-not $comp) { Write-Host "  （compliance/ 为空：商用前需补证照与包装背面）" -ForegroundColor DarkGray }
}

Write-Host ""
Write-Host "=== git ===" -ForegroundColor Cyan
git -C $root status --short 2>&1 | ForEach-Object { "  $_" }
