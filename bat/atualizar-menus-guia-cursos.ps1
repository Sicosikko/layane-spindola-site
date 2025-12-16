# Script para adicionar "Guia de Cursos" aos menus
$ErrorActionPreference = "Stop"

Write-Host "Atualizando menus com Guia de Cursos..." -ForegroundColor Cyan

# Ler o arquivo index.html
$indexPath = Join-Path $PSScriptRoot "..\index.html"
$content = Get-Content $indexPath -Raw -Encoding UTF8

# Padrão para encontrar os menus dropdown
$oldPattern1 = '<ul class="dropdown-menu">
                                <li><a href="/html/terapeuta-alta-performance.html">Terapeuta de Alta Performance</a></li>'

$newPattern1 = '<ul class="dropdown-menu">
                                <li><a href="/html/guia-de-cursos.html">📚 Guia de Cursos</a></li>
                                <li><a href="/html/terapeuta-alta-performance.html">Terapeuta de Alta Performance</a></li>'

$oldPattern2 = '<ul class="dropdown-menu">
                    <li><a href="/html/terapeuta-alta-performance.html">Terapeuta de Alta Performance</a></li>'

$newPattern2 = '<ul class="dropdown-menu">
                    <li><a href="/html/guia-de-cursos.html">📚 Guia de Cursos</a></li>
                    <li><a href="/html/terapeuta-alta-performance.html">Terapeuta de Alta Performance</a></li>'

# Fazer substituições
$content = $content -replace [regex]::Escape($oldPattern1), $newPattern1
$content = $content -replace [regex]::Escape($oldPattern2), $newPattern2

# Salvar o arquivo
$content | Set-Content $indexPath -NoNewline -Encoding UTF8

Write-Host "index.html atualizado com sucesso!" -ForegroundColor Green

# Agora atualizar a landing page
$landingPath = Join-Path $PSScriptRoot "..\html\guia-pratico-naturopatia.html"
if (Test-Path $landingPath) {
    $landingContent = Get-Content $landingPath -Raw -Encoding UTF8
    
    $oldLanding = '<ul class="dropdown-menu">
                                <li><a href="terapeuta-alta-performance.html">Terapeuta de Alta Performance</a></li>'
    
    $newLanding = '<ul class="dropdown-menu">
                                <li><a href="guia-de-cursos.html">📚 Guia de Cursos</a></li>
                                <li><a href="terapeuta-alta-performance.html">Terapeuta de Alta Performance</a></li>'
    
    $landingContent = $landingContent -replace [regex]::Escape($oldLanding), $newLanding
    $landingContent | Set-Content $landingPath -NoNewline -Encoding UTF8
    
    Write-Host "guia-pratico-naturopatia.html atualizado com sucesso!" -ForegroundColor Green
}

Write-Host ""
Write-Host "Menus atualizados!" -ForegroundColor Cyan

