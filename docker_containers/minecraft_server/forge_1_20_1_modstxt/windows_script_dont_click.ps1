$filePath = "mods.txt"
$outputFolder = "mods"

if (-not (Test-Path $outputFolder -PathType Container)) {
    New-Item -Path $outputFolder -ItemType Directory | Out-Null
}

$links = Get-Content $filePath

foreach ($link in $links) {
    $fileName = (Invoke-WebRequest -Uri $link).Headers.'Content-Disposition' -replace '.*filename=([^\n]+)','$1'
    $outputPath = Join-Path $outputFolder $fileName

    Write-Host "Pobieranie pliku: $fileName"

    try {
        Invoke-WebRequest -Uri $link -OutFile $outputPath -ErrorAction Stop
        Write-Host "Plik $fileName został pobrany i zapisany."
    } catch {
        Write-Host "Wystąpił błąd podczas pobierania pliku $fileName: $_"
    }
}
