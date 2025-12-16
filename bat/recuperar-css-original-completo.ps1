# Recuperar CSS Original Completo
$ErrorActionPreference = "Stop"

Write-Host "========================================" -ForegroundColor Green
Write-Host "RECUPERAR: CSS Original Completo" -ForegroundColor Green
Write-Host "========================================`n" -ForegroundColor Green

# Obter CSS original do git
Write-Host "[1/2] Obtendo CSS original do git..." -ForegroundColor Yellow

# Tentar diferentes commits para encontrar o CSS completo
$commits = @(
    "HEAD~1",
    "HEAD~2",
    "HEAD~3",
    "HEAD~4",
    "HEAD~5"
)

$cssOriginal = ""
foreach ($commit in $commits) {
    Write-Host "Tentando commit: $commit" -ForegroundColor Cyan
    $cssOriginal = git show "${commit}:css/curso-landing.css" 2>$null
    
    if ($cssOriginal -and $cssOriginal.Length -gt 10000) {
        Write-Host "✓ CSS encontrado no commit $commit! ($($cssOriginal.Length) caracteres)`n" -ForegroundColor Green
        break
    }
}

if (-not $cssOriginal -or $cssOriginal.Length -lt 10000) {
    Write-Host "ERRO: Não foi possível encontrar CSS completo!" -ForegroundColor Red
    Write-Host "Tentando método alternativo..." -ForegroundColor Yellow
    
    # Tentar com git log
    $lastGoodCommit = git log --all --full-history --oneline -- "css/curso-landing.css" | Select-Object -First 5
    Write-Host "`nÚltimos commits com curso-landing.css:" -ForegroundColor Cyan
    Write-Host $lastGoodCommit
    pause
    exit 1
}

Write-Host "[2/2] Criando css/guia-naturopatia.css com conteúdo completo..." -ForegroundColor Yellow

# Adicionar estilos de certificações ao final
$cssCompleto = @"
$cssOriginal

/* ============================================
   CERTIFICAÇÕES E RECONHECIMENTOS
   Adicionado para Guia Prático de Naturopatia
   ============================================ */

.certificacoes-section {
    padding: 80px 0;
    background: linear-gradient(135deg, #f8f9fa 0%, #fff 100%);
}

.certificacoes-intro {
    text-align: center;
    font-size: 1.2rem;
    color: #666;
    max-width: 800px;
    margin: 1rem auto 3rem;
    line-height: 1.8;
}

.certificacoes-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(450px, 1fr));
    gap: 3rem;
    margin-bottom: 4rem;
}

.certificacao-card {
    background: #fff;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
    border: 2px solid rgba(212, 175, 55, 0.1);
}

.certificacao-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 20px 60px rgba(0, 0, 0, 0.15);
    border-color: rgba(212, 175, 55, 0.3);
}

.certificacao-image {
    width: 100%;
    height: 300px;
    overflow: hidden;
    background: #f8f9fa;
}

.certificacao-image img {
    width: 100%;
    height: 100%;
    object-fit: contain;
    transition: transform 0.4s ease;
    padding: 1rem;
}

.certificacao-card:hover .certificacao-image img {
    transform: scale(1.05);
}

.certificacao-info {
    padding: 2rem;
    text-align: center;
}

.certificacao-info h3 {
    font-size: 1.4rem;
    color: #4f772d;
    margin-bottom: 1rem;
    font-weight: 700;
}

.certificacao-info h3 i {
    margin-right: 0.5rem;
    color: #d4af37;
}

.certificacao-info p {
    color: #666;
    font-size: 1rem;
    line-height: 1.6;
}

.curso-beneficios {
    background: linear-gradient(135deg, #1a4d2e 0%, #2c5530 100%);
    padding: 3rem;
    border-radius: 20px;
    color: #fff;
    max-width: 900px;
    margin: 0 auto;
}

.beneficios-title {
    font-size: 1.8rem;
    font-weight: 700;
    margin-bottom: 2rem;
    text-align: center;
    color: #fff;
}

.beneficios-lista {
    list-style: none;
    padding: 0;
    margin: 0;
}

.beneficios-lista li {
    display: flex;
    align-items: flex-start;
    gap: 1rem;
    padding: 1rem 0;
    font-size: 1.1rem;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    line-height: 1.6;
}

.beneficios-lista li:last-child {
    border-bottom: none;
}

.beneficios-lista li i {
    color: #d4af37;
    font-size: 1.3rem;
    margin-top: 0.2rem;
    flex-shrink: 0;
}

.beneficios-lista li strong {
    color: #f4e4b8;
}

/* Responsividade Mobile para Certificações */
@media (max-width: 768px) {
    .certificacoes-section {
        padding: 60px 0;
    }

    .certificacoes-intro {
        font-size: 1.1rem;
        padding: 0 1rem;
    }

    .certificacoes-grid {
        grid-template-columns: 1fr;
        gap: 2rem;
    }

    .certificacao-image {
        height: 250px;
    }

    .certificacao-info {
        padding: 1.5rem;
    }

    .certificacao-info h3 {
        font-size: 1.2rem;
    }

    .curso-beneficios {
        padding: 2rem;
        margin: 0 1rem;
    }

    .beneficios-title {
        font-size: 1.5rem;
    }

    .beneficios-lista li {
        font-size: 1rem;
        padding: 0.8rem 0;
    }
}

@media (max-width: 480px) {
    .certificacoes-section {
        padding: 40px 0;
    }

    .certificacoes-grid {
        gap: 1.5rem;
        padding: 0 0.5rem;
    }

    .certificacao-image {
        height: 200px;
    }

    .certificacao-info {
        padding: 1.2rem;
    }

    .certificacao-info h3 {
        font-size: 1.1rem;
    }

    .curso-beneficios {
        padding: 1.5rem;
        margin: 0 0.5rem;
    }

    .beneficios-title {
        font-size: 1.3rem;
    }

    .beneficios-lista li {
        font-size: 0.95rem;
        padding: 0.7rem 0;
    }
}
"@

[System.IO.File]::WriteAllText("css/guia-naturopatia.css", $cssCompleto, [System.Text.Encoding]::UTF8)

Write-Host "✓ CSS completo criado!`n" -ForegroundColor Green

if (Test-Path "css/guia-naturopatia.css") {
    $fileSize = (Get-Item "css/guia-naturopatia.css").length
    Write-Host "✓ css/guia-naturopatia.css: $fileSize bytes`n" -ForegroundColor Green
    
    # Contar linhas
    $lines = (Get-Content "css/guia-naturopatia.css").Count
    Write-Host "✓ Total de linhas: $lines`n" -ForegroundColor Green
}

Write-Host "========================================" -ForegroundColor Green
Write-Host "CSS ORIGINAL COMPLETO RECUPERADO!" -ForegroundColor Green
Write-Host "========================================`n" -ForegroundColor Green

pause

