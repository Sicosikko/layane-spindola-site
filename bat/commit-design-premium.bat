@echo off
echo ========================================
echo    COMMIT - DESIGN PREMIUM
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
git commit -m "design: Aplicar tema premium inspirado em Marca Irresistivel - Nova paleta: Preto, Branco, Dourado e Verde - Tipografia bold e impactante com pesos 800-900 - Botoes premium com gradientes dourados e animacoes - Cards com sombras elegantes e bordas douradas - Sections com backgrounds alternados - Hero com background preto e texto branco - Destaques em dourado nos titulos principais - Animacoes suaves e transicoes premium - Footer preto com detalhes dourados - Formulario com bordas douradas - Stats com numeros em gradiente dourado - Social links com hover effects premium - Design luxuoso e moderno inspirado em MI"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Design premium aplicado com sucesso
    echo ✅ Nova paleta de cores implementada
    echo ✅ Tema luxuoso e moderno
    echo.
    echo PRINCIPAIS MUDANCAS:
    echo.
    echo CORES:
    echo - Preto primario: #1a1a1a
    echo - Branco: #ffffff
    echo - Dourado: #d4af37
    echo - Verde: #2c5530
    echo - Gradientes dourados e verdes
    echo.
    echo DESIGN:
    echo - Tipografia bold (peso 800-900^)
    echo - Botoes premium com animacoes
    echo - Cards com sombras elegantes
    echo - Hero preto com destaques dourados
    echo - Sections com backgrounds alternados
    echo - Footer preto premium
    echo.
    echo INSPIRACAO:
    echo - Baseado em marcairresistivel.com
    echo - Layout luxuoso e moderno
    echo - Espacamento generoso
    echo - Elementos premium
    echo.
    echo Aguarde 2-3 minutos e veja o novo design:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Teste especialmente:
    echo - Hero section com background preto
    echo - Botoes com gradiente dourado
    echo - Cards com hover effects
    echo - Footer preto com links dourados
    echo - Formulario com bordas douradas
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
