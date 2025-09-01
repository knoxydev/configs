Write-Host "`nChecking Docker containers status..." -ForegroundColor Cyan

$containers = docker ps --format '{{.Names}}|{{.Status}}|{{.Ports}}'

if (-not $containers) {
    Write-Host "No running containers found." -ForegroundColor Yellow
    exit
}

$containers.Split("`n") | ForEach-Object {
    $parts = $_ -split '\|'
    $name = $parts[0].Trim()
    $status = $parts[1].Trim()
    $ports = $parts[2].Trim()

    if ($status -like "Up*") {
        Write-Host "`n$name is running." -NoNewline

        if ($status -notmatch "Attached") {
            Write-Host " (Background mode)" -ForegroundColor Green
        } else {
            Write-Host " (Foreground mode)" -ForegroundColor Blue
        }

        if ($ports) {
            $urls = @()

            foreach ($port in $ports -split ',') {
                if ($port -match '0\.0\.0\.0:(\d+)->') {
                    $localPort = $Matches[1]
                    $urls += "http://localhost:$localPort"
                }
            }

            if ($urls.Count -gt 0) {
                Write-Host " Available at:" -ForegroundColor Cyan
                $urls | ForEach-Object { Write-Host "    $_" -ForegroundColor DarkCyan }
            }
        }
    }
    elseif ($status -like "Exited*") {
        Write-Host "`n$name is stopped. Status: $status" -ForegroundColor Red
    }
    else {
        Write-Host "`n$name has unknown status: $status" -ForegroundColor Yellow
    }
}



