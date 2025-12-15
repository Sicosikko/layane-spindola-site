# Atualizar Guia Prático de Naturopatia
$ErrorActionPreference = "Stop"
$encoding = [System.Text.Encoding]::UTF8

Write-Host "========================================" -ForegroundColor Green
Write-Host "ATUALIZANDO: Guia Prático Naturopatia" -ForegroundColor Green
Write-Host "========================================`n" -ForegroundColor Green

# Restaurar arquivo original
Write-Host "[1/3] Restaurando arquivo original..." -ForegroundColor Yellow
git checkout HEAD -- html/guia-pratico-naturopatia.html
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERRO: Falha ao restaurar arquivo!" -ForegroundColor Red
    pause
    exit 1
}
Write-Host "✓ Arquivo restaurado!`n" -ForegroundColor Green

# Ler arquivo
Write-Host "[2/3] Aplicando atualizações..." -ForegroundColor Yellow
$conteudo = Get-Content -Path "html/guia-pratico-naturopatia.html" -Raw -Encoding UTF8

# 1. Atualizar Hero Title
$conteudo = $conteudo -replace '<h1 class="curso-hero-title animate-slide-up">[^<]+<span class="highlight-gold">Naturopata Certificada</span>:[^<]+</h1>', '<h1 class="curso-hero-title animate-slide-up">
                        <span class="highlight-gold">Guia Prático de Naturopatia</span>: O Fundamento da Carreira do Naturopata
                    </h1>'

# 2. Atualizar Hero Subtitle
$conteudo = $conteudo -replace 'Imagine acordar todo dia sabendo que sua carreira não é só um emprego[^<]+', 'Transforme sua vocação em uma carreira sólida, próspera e com impacto em transformação de vidas.</strong> O Guia Prático de Naturopatia é o ponto de partida para quem deseja entender, com profundidade, a lógica da saúde natural.'

# 3. Atualizar 17 para 21 módulos
$conteudo = $conteudo -replace '17 módulos', '21 módulos'
$conteudo = $conteudo -replace 'data-target="17">17', 'data-target="21">21'

# 4. Atualizar label ABRATH
$conteudo = $conteudo -replace '<div class="stat-label">Certificado ABRATH</div>', '<div class="stat-label">Certificado ABRATH 600h</div>'

# 5. Remover seção Prova Social (depoimentos)
$conteudo = $conteudo -replace '(?s)<!-- Prova Social -->.*?</section>\s+<!-- CTA Final -->', '<!-- CTA Final -->'

# Salvar arquivo
[System.IO.File]::WriteAllText("html/guia-pratico-naturopatia.html", $conteudo, $encoding)
Write-Host "✓ Atualizações aplicadas!`n" -ForegroundColor Green

Write-Host "[3/3] Verificando arquivo..." -ForegroundColor Yellow
if (Test-Path "html/guia-pratico-naturopatia.html") {
    $fileSize = (Get-Item "html/guia-pratico-naturopatia.html").length
    Write-Host "✓ Arquivo atualizado! Tamanho: $fileSize bytes`n" -ForegroundColor Green
}

Write-Host "========================================" -ForegroundColor Green
Write-Host "ATUALIZAÇÕES CONCLUÍDAS!" -ForegroundColor Green
Write-Host "========================================`n" -ForegroundColor Green

Write-Host "✅ ALTERAÇÕES APLICADAS:" -ForegroundColor Cyan
Write-Host "   - Hero title e subtitle atualizados" -ForegroundColor White
Write-Host "   - 17 módulos → 21 módulos" -ForegroundColor White
Write-Host "   - Certificado ABRATH 600h" -ForegroundColor White
Write-Host "   - Seção de depoimentos removida`n" -ForegroundColor White

Write-Host "NOTA: A seção de certificações com imagens MEC/Unifatec" -ForegroundColor Yellow
Write-Host "será adicionada via CSS/HTML separadamente.`n" -ForegroundColor Yellow

pause

