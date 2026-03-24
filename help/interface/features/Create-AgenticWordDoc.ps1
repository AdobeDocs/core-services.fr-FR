# Create agentic-ai.docx from agentic-ai.html using Word COM (if Word is installed)
$htmlPath = Join-Path $PSScriptRoot "agentic-ai.html"
$docxPath = Join-Path $PSScriptRoot "agentic-ai.docx"

if (-not (Test-Path $htmlPath)) {
    Write-Error "HTML file not found: $htmlPath"
    exit 1
}

try {
    $word = New-Object -ComObject Word.Application
    $word.Visible = $false
    # Suppress conversion prompts and other dialogs during automation
    $word.DisplayAlerts = 0
    # ConfirmConversions = false avoids HTML conversion prompts
    $doc = $word.Documents.Open($htmlPath, $false)
    $doc.SaveAs([ref]$docxPath, [ref]16)  # 16 = wdFormatDocumentDefault (.docx)
    $doc.Close()
    $word.Quit()
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($word) | Out-Null
    Write-Host "Created: $docxPath"
} catch {
    Write-Warning "Word COM failed: $($_.Exception.Message)"
    Write-Host "Use the HTML file instead:"
    Write-Host "  1. Open $htmlPath in Microsoft Word"
    Write-Host "  2. File > Save As > Word Document (.docx)"
    exit 1
}
