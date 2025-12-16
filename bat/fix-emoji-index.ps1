$filePath = "index.html"
$content = Get-Content $filePath -Raw -Encoding UTF8
$content = $content -replace [char]0x00F0 + [char]0x0178 + [char]0x201C + [char]0x0161 + " Guia de Cursos", "Guia de Cursos"
Set-Content $filePath -Value $content -Encoding UTF8 -NoNewline
Write-Host "Emoji corrigido com sucesso!"

