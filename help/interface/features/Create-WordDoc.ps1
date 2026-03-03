# Create ai-credit-consumption.docx from the HTML file using Word COM (if Word is installed)
$htmlPath = Join-Path $PSScriptRoot "ai-credit-consumption.html"
$docxPath = Join-Path $PSScriptRoot "ai-credit-consumption.docx"

if (-not (Test-Path $htmlPath)) {
    Write-Error "HTML file not found: $htmlPath"
    exit 1
}

try {
    $word = New-Object -ComObject Word.Application
    $word.Visible = $false
    $doc = $word.Documents.Open($htmlPath)
    $doc.SaveAs([ref]$docxPath, [ref]16)  # 16 = wdFormatDocumentDefault (.docx)
    $doc.Close()
    $word.Quit()
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($word) | Out-Null
    Write-Host "Created: $docxPath"
} catch {
    Write-Warning "Word COM failed (Word may not be installed). Use the HTML file instead:"
    Write-Host "  1. Open $htmlPath in Microsoft Word"
    Write-Host "  2. File > Save As > Word Document (.docx)"
    exit 1
}
