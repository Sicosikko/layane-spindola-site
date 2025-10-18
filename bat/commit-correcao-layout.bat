@echo off
echo ========================================
echo    COMMIT - CORRECAO LAYOUT HERO
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
git commit -m "fix: Corrigir layout hero e remover foto da secao Sobre Mim - Foto mantida apenas na hero section conforme solicitado - Placeholder restaurado na secao Sobre Mim - Grid layout hero corrigido: 2 colunas desktop - Hero-text na coluna 1, hero-image na coluna 2 - Gap 4rem entre texto e imagem - Responsivo mobile: 1 coluna centralizada - Max-width 450px desktop e 350px mobile - Layout estruturado corretamente"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Layout hero corrigido
    echo ✅ Foto apenas na hero section
    echo ✅ Secao Sobre Mim com placeholder
    echo.
    echo CORRECOES APLICADAS:
    echo.
    echo HERO SECTION:
    echo - Grid 2 colunas: texto ^| imagem
    echo - Gap: 4rem entre colunas
    echo - Foto na coluna direita
    echo - Texto na coluna esquerda
    echo - Alinhamento centralizado
    echo.
    echo SECAO SOBRE MIM:
    echo - Placeholder restaurado
    echo - Aguardando outra foto
    echo - Layout preservado
    echo.
    echo RESPONSIVO:
    echo - Mobile: 1 coluna centralizada
    echo - Texto acima, foto abaixo
    echo - Max-width 350px mobile
    echo - Gap 2rem
    echo.
    echo DESKTOP:
    echo - Grid 2 colunas lado a lado
    echo - Max-width 450px
    echo - Gap 4rem
    echo - Alinhamento perfeito
    echo.
    echo Aguarde 2-3 minutos e veja o layout correto:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Layout hero restaurado e organizado! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
