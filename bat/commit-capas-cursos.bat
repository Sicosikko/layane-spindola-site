@echo off
echo ========================================
echo    COMMIT - CAPAS DOS CURSOS
echo ========================================
echo.

echo Verificando status...
git status

echo.
echo Adicionando arquivos...
git add .
git add -A

echo.
echo Fazendo commit...
git commit -m "feat: Adicionar capas profissionais dos cursos na secao produtos - Terapeuta de Alta Performance: kGW6rq5G - Guia Pratico de Naturopatia: 0jSm87Vf - Programa Aceleracao Agape: nh2mcFGB - Protocolos Terapeuticos: kGLVzD96 - Imagens 250px altura com object-fit cover - Border-radius 15px - Hover scale 1.05 - Loading lazy para performance - Layout grid 3 colunas mantido - Quarto card centralizado"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Capas dos cursos adicionadas
    echo ✅ Design profissional aplicado
    echo ✅ Hover effects implementados
    echo.
    echo CAPAS ADICIONADAS:
    echo.
    echo 1. TERAPEUTA DE ALTA PERFORMANCE
    echo    URL: i.postimg.cc/kGW6rq5G/terapeuta-de-alta-performance.png
    echo.
    echo 2. GUIA PRATICO DE NATUROPATIA
    echo    URL: i.postimg.cc/0jSm87Vf/guia-pratico.jpg
    echo.
    echo 3. PROGRAMA ACELERACAO AGAPE
    echo    URL: i.postimg.cc/nh2mcFGB/gape.png
    echo.
    echo 4. PROTOCOLOS TERAPEUTICOS
    echo    URL: i.postimg.cc/kGLVzD96/Protocolos-terapeuticos.png
    echo.
    echo ESPECIFICACOES DO DESIGN:
    echo.
    echo IMAGENS:
    echo - Altura fixa: 250px
    echo - Largura: 100%% do card
    echo - Object-fit: cover ^(proporcao mantida^)
    echo - Border-radius: 15px
    echo - Margin-bottom: 1.5rem
    echo - Overflow: hidden
    echo.
    echo HOVER EFFECTS:
    echo - Card: translateY^(-8px^)
    echo - Imagem: scale^(1.05^)
    echo - Box-shadow aumentado
    echo - Borda dourada
    echo - Transicao: 0.4s ease
    echo.
    echo LAYOUT GRID:
    echo - Desktop: 3 colunas
    echo - Card 4 centralizado ^(grid-column: 2/3^)
    echo - Gap entre cards mantido
    echo - Responsivo para mobile
    echo.
    echo OTIMIZACOES:
    echo - Loading: lazy
    echo - Alt text descritivo
    echo - Performance otimizada
    echo.
    echo Aguarde 2-3 minutos e veja as capas:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Cursos agora com capas profissionais! 📚✨
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
