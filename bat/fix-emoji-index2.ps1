# Ler o arquivo como bytes
$filePath = "index.html"
$bytes = [System.IO.File]::ReadAllBytes($filePath)
$content = [System.Text.Encoding]::UTF8.GetString($bytes)

# Substituir qualquer caractere estranho antes de "Guia de Cursos"
# Usando regex para remover caracteres não-ASCII antes do texto
$content = $content -replace '[^\x00-\x7F]+\s*Guia de Cursos', 'Guia de Cursos'

# Salvar o arquivo
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($filePath, $content, $utf8NoBom)

Write-Host "Correção aplicada!"
Write-Host "Tamanho do arquivo: $((Get-Item $filePath).Length) bytes"

