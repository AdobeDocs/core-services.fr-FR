# Build agentic-ai.docx from agentic-ai.html using OOXML (no Word required).
# Requires PowerShell 5+ and .NET Framework (ZipFile).

$ErrorActionPreference = 'Stop'
$scriptDir = $PSScriptRoot
$htmlPath = Join-Path $scriptDir 'agentic-ai.html'
$docxPath = Join-Path $scriptDir 'agentic-ai.docx'

if (-not (Test-Path $htmlPath)) { throw "Missing: $htmlPath" }

function Escape-XmlText([string]$s) {
    if ($null -eq $s) { return '' }
    return ($s -replace '&', '&amp;' -replace '<', '&lt;' -replace '>', '&gt;')
}

function Strip-Html([string]$html) {
    if ([string]::IsNullOrWhiteSpace($html)) { return '' }
    $t = $html
    $t = $t -replace '(?s)<script.*?</script>', ''
    $t = $t -replace '(?s)<style.*?</style>', ''
    $t = $t -replace '<br\s*/?>', "`n"
    $t = $t -replace '</li>', "`n"
    $t = $t -replace '<li[^>]*>', '- '
    $t = $t -replace '</p>', "`n"
    $t = $t -replace '</ul>', "`n"
    $t = $t -replace '<[^>]+>', ''
    $t = $t -replace '&nbsp;', ' '
    $t = $t -replace '&amp;', '&'
    $t = $t -replace '&lt;', '<'
    $t = $t -replace '&gt;', '>'
    return ($t.Trim())
}

function New-WParagraph([string]$text, [string]$style = 'Body') {
    $t = Escape-XmlText($text)
    if ($style -eq 'H1') {
        return @"
    <w:p>
      <w:pPr><w:pStyle w:val="Heading1"/></w:pPr>
      <w:r><w:t xml:space="preserve">$t</w:t></w:r>
    </w:p>
"@
    }
    if ($style -eq 'H2') {
        return @"
    <w:p>
      <w:pPr><w:pStyle w:val="Heading2"/></w:pPr>
      <w:r><w:t xml:space="preserve">$t</w:t></w:r>
    </w:p>
"@
    }
    if ($style -eq 'H3') {
        return @"
    <w:p>
      <w:pPr><w:pStyle w:val="Heading3"/></w:pPr>
      <w:r><w:t xml:space="preserve">$t</w:t></w:r>
    </w:p>
"@
    }
    return @"
    <w:p>
      <w:r><w:t xml:space="preserve">$t</w:t></w:r>
    </w:p>
"@
}

function New-WTable([string[][]]$rows) {
    $sb = [System.Text.StringBuilder]::new()
    [void]$sb.AppendLine('    <w:tbl>')
    [void]$sb.AppendLine('      <w:tblPr><w:tblW w:w="5000" w:type="pct"/></w:tblPr>')
    foreach ($row in $rows) {
        [void]$sb.AppendLine('      <w:tr>')
        foreach ($cell in $row) {
            $plain = Strip-Html $cell
            $escaped = Escape-XmlText $plain
            [void]$sb.AppendLine('        <w:tc>')
            [void]$sb.AppendLine('          <w:tcPr><w:tcW w:w="3000" w:type="dxa"/></w:tcPr>')
            [void]$sb.AppendLine('          <w:p><w:r><w:t xml:space="preserve">' + $escaped + '</w:t></w:r></w:p>')
            [void]$sb.AppendLine('        </w:tc>')
        }
        [void]$sb.AppendLine('      </w:tr>')
    }
    [void]$sb.AppendLine('    </w:tbl>')
    return $sb.ToString()
}

# --- Parse HTML body (simple tokenizer for this file) ---
$html = Get-Content -LiteralPath $htmlPath -Raw -Encoding UTF8
if ($html -notmatch '(?s)<body[^>]*>(.*)</body>') { throw 'Could not find <body>' }
$body = $Matches[1]

$blocks = New-Object System.Collections.Generic.List[hashtable]
$re = [regex]'(?s)<(h[123]|p|ul|table)\b[^>]*>(.*?)</\1>'
$matches = $re.Matches($body)
foreach ($m in $matches) {
    $tag = $m.Groups[1].Value
    $inner = $m.Groups[2].Value
    if ($tag -eq 'table') {
        $blocks.Add(@{ kind = 'table'; html = $m.Value })
        continue
    }
    if ($tag -eq 'ul') {
        $lis = [regex]::Matches($inner, '(?s)<li[^>]*>(.*?)</li>')
        $items = foreach ($li in $lis) { Strip-Html $li.Groups[1].Value }
        $blocks.Add(@{ kind = 'ul'; items = @($items) })
        continue
    }
    if ($tag -match '^h[123]$') {
        $text = Strip-Html $inner
        $blocks.Add(@{ kind = 'heading'; level = [int]($tag.Substring(1)); text = $text })
        continue
    }
    if ($tag -eq 'p') {
        $text = Strip-Html $inner
        $blocks.Add(@{ kind = 'p'; text = $text })
    }
}

# --- Build document.xml body ---
$bodyXml = [System.Text.StringBuilder]::new()
foreach ($b in $blocks) {
    switch ($b.kind) {
        'heading' {
            $st = 'H1'; if ($b.level -eq 2) { $st = 'H2' }; if ($b.level -eq 3) { $st = 'H3' }
            [void]$bodyXml.AppendLine((New-WParagraph $b.text $st))
        }
        'p' { [void]$bodyXml.AppendLine((New-WParagraph $b.text 'Body')) }
        'ul' {
            foreach ($item in $b.items) {
                if (-not [string]::IsNullOrWhiteSpace($item)) {
                    [void]$bodyXml.AppendLine((New-WParagraph $item 'Body'))
                }
            }
        }
        'table' {
            $tHtml = $b.html
            $rows = New-Object System.Collections.Generic.List[object]
            $trMatches = [regex]::Matches($tHtml, '(?s)<tr[^>]*>(.*?)</tr>')
            foreach ($tr in $trMatches) {
                $cells = [regex]::Matches($tr.Groups[1].Value, '(?s)<t[dh][^>]*>(.*?)</t[dh]>')
                if ($cells.Count -eq 0) { continue }
                $row = @()
                foreach ($c in $cells) { $row += $c.Groups[1].Value }
                $rows.Add($row)
            }
            if ($rows.Count -gt 0) {
                [void]$bodyXml.AppendLine((New-WTable ($rows.ToArray())))
            }
        }
    }
}

$documentPart = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
  <w:body>
$($bodyXml.ToString())
    <w:sectPr>
      <w:pgSz w:w="12240" w:h="15840"/>
      <w:pgMar w:top="1440" w:right="1440" w:bottom="1440" w:left="1440" w:header="708" w:footer="708" w:gutter="0"/>
    </w:sectPr>
  </w:body>
</w:document>
"@

$stylesPart = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<w:styles xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
  <w:docDefaults>
    <w:rPrDefault><w:rPr><w:sz w:val="22"/><w:szCs w:val="22"/></w:rPr></w:rPrDefault>
    <w:pPrDefault><w:pPr><w:spacing w:after="160" w:line="259" w:lineRule="auto"/></w:pPr></w:pPrDefault>
  </w:docDefaults>
  <w:style w:type="paragraph" w:default="1" w:styleId="Normal">
    <w:name w:val="Normal"/>
    <w:qFormat/>
    <w:pPr><w:spacing w:after="160" w:line="259" w:lineRule="auto"/></w:pPr>
    <w:rPr><w:sz w:val="22"/><w:szCs w:val="22"/></w:rPr>
  </w:style>
  <w:style w:type="paragraph" w:styleId="Heading1">
    <w:name w:val="heading 1"/>
    <w:basedOn w:val="Normal"/>
    <w:next w:val="Normal"/>
    <w:qFormat/>
    <w:pPr><w:keepNext/><w:spacing w:before="240" w:after="120"/></w:pPr>
    <w:rPr><w:b/><w:sz w:val="32"/><w:szCs w:val="32"/></w:rPr>
  </w:style>
  <w:style w:type="paragraph" w:styleId="Heading2">
    <w:name w:val="heading 2"/>
    <w:basedOn w:val="Normal"/>
    <w:next w:val="Normal"/>
    <w:qFormat/>
    <w:pPr><w:keepNext/><w:spacing w:before="200" w:after="120"/></w:pPr>
    <w:rPr><w:b/><w:sz w:val="26"/><w:szCs w:val="26"/></w:rPr>
  </w:style>
  <w:style w:type="paragraph" w:styleId="Heading3">
    <w:name w:val="heading 3"/>
    <w:basedOn w:val="Normal"/>
    <w:next w:val="Normal"/>
    <w:qFormat/>
    <w:pPr><w:keepNext/><w:spacing w:before="160" w:after="80"/></w:pPr>
    <w:rPr><w:b/><w:sz w:val="24"/><w:szCs w:val="24"/></w:rPr>
  </w:style>
</w:styles>
"@

$contentTypes = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>
  <Default Extension="xml" ContentType="application/xml"/>
  <Override PartName="/word/document.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"/>
  <Override PartName="/word/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml"/>
  <Override PartName="/docProps/core.xml" ContentType="application/vnd.openxmlformats-package.core-properties+xml"/>
</Types>
"@

$relsRoot = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="word/document.xml"/>
  <Relationship Id="rId2" Type="http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties" Target="docProps/core.xml"/>
</Relationships>
"@

$relsDoc = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>
</Relationships>
"@

$coreProps = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<cp:coreProperties xmlns:cp="http://schemas.openxmlformats.org/package/2006/metadata/core-properties" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dcmitype="http://purl.org/dc/dcmitype/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <dc:title>Agentic AI in Adobe Experience Cloud</dc:title>
  <dc:creator>core-services.en</dc:creator>
  <cp:lastModifiedBy>Build-AgenticDocx.ps1</cp:lastModifiedBy>
  <dcterms:created xsi:type="dcterms:W3CDTF">$(Get-Date -Format 'yyyy-MM-ddTHH:mm:ssZ')</dcterms:created>
  <dcterms:modified xsi:type="dcterms:W3CDTF">$(Get-Date -Format 'yyyy-MM-ddTHH:mm:ssZ')</dcterms:modified>
</cp:coreProperties>
"@

$tempRoot = Join-Path $env:TEMP ("agentic-docx-" + [Guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path (Join-Path $tempRoot '_rels') -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $tempRoot 'word\_rels') -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $tempRoot 'docProps') -Force | Out-Null

Set-Content -LiteralPath (Join-Path $tempRoot '[Content_Types].xml') -Value $contentTypes -Encoding UTF8
Set-Content -LiteralPath (Join-Path $tempRoot '_rels\.rels') -Value $relsRoot -Encoding UTF8
Set-Content -LiteralPath (Join-Path $tempRoot 'word\document.xml') -Value $documentPart -Encoding UTF8
Set-Content -LiteralPath (Join-Path $tempRoot 'word\styles.xml') -Value $stylesPart -Encoding UTF8
Set-Content -LiteralPath (Join-Path $tempRoot 'word\_rels\document.xml.rels') -Value $relsDoc -Encoding UTF8
Set-Content -LiteralPath (Join-Path $tempRoot 'docProps\core.xml') -Value $coreProps -Encoding UTF8

if (Test-Path -LiteralPath $docxPath) { Remove-Item -LiteralPath $docxPath -Force }

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::CreateFromDirectory($tempRoot, $docxPath, [System.IO.Compression.CompressionLevel]::Optimal, $false)

Remove-Item -LiteralPath $tempRoot -Recurse -Force

Write-Host "Created: $docxPath"
