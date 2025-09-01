# HOW TO EXECUTE
# powershell -ExecutionPolicy Bypass -File .\fix-go.ps1


# fix-go.ps1
# Исправляет стиль скобок в Go и запускает gofmt
# Использование: powershell -ExecutionPolicy Bypass -File .\fix-go.ps1

Write-Host "Searching .go-files..."
$files = Get-ChildItem -Path . -Filter *.go -Recurse -File -ErrorAction SilentlyContinue

if (-not $files) {
    Write-Host "[ERROR]: .go-files not found"
    exit
}

foreach ($f in $files) {
    $original = Get-Content -Path $f.FullName -Raw

    # Определяем перенос строк (CRLF/LF)
    $newline = if ($original -match "`r`n") { "`r`n" } elseif ($original -match "`n") { "`n" } else { "`r`n" }

    $lines = $original -split "`r?`n", 0
    $out = New-Object System.Collections.Generic.List[string]

    foreach ($line in $lines) {
        # Если строка состоит только из пробелов + {
        if ($line -match '^\s*{\s*(.*)$' -and $out.Count -gt 0) {
            $rest = $matches[1]
            $prev = $out[$out.Count - 1].TrimEnd()

            if ([string]::IsNullOrWhiteSpace($rest)) {
                $out[$out.Count - 1] = "$prev {"
            } else {
                $out[$out.Count - 1] = "$prev { $rest"
            }
            continue
        }
        $out.Add($line)
    }

    $newText = [string]::Join($newline, $out)

    if ($newText -ne $original) {
        $backupFile = $f.FullName + ".bak"
        if (-not (Test-Path $backupFile)) {
            Copy-Item -Path $f.FullName -Destination $backupFile -Force
        }
        Set-Content -Path $f.FullName -Value $newText -NoNewline
        Write-Host "[FIXED]: $($f.FullName)"
    }

    # Автоформат через gofmt
    try {
        & gofmt -w -- $f.FullName 2>$null
    } catch {
        Write-Warning "[ERROR]: gofmt not found in PATH"
    }
}

Write-Host "[SUCCESS]: fix-go.ps1"
