@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Atualizar Guia Naturopatia
echo ========================================
echo.

cd /d "%~dp0\.."

echo [1/4] Verificando status do Git...
git status
echo.

echo [2/4] Adicionando TODOS os arquivos modificados...
git add .
git add -A
if %errorlevel% neq 0 (
    echo ERRO: Falha ao adicionar arquivos!
    pause
    exit /b 1
)
echo Arquivos adicionados com sucesso!
echo.

echo [3/4] Fazendo commit...
git commit -m "feat: atualizar landing guia pratico naturopatia - Hero: novo titulo e subtitulo - Transforme sua vocacao em carreira solida - Modulos: 17 → 21 modulos - Certificado: ABRATH 600h - Secao certificacoes: imagens MEC e Unifatec - Lista completa de beneficios (apostila, PDF, acesso vitalicio) - Removido: secao de depoimentos - Atualizado: todas referencias a 17 modulos para 21 modulos"
if %errorlevel% neq 0 (
    echo AVISO: Nada para commitar ou erro ao commitar
    git status
    pause
    exit /b 0
)
echo Commit realizado com sucesso!
echo.

echo [4/4] Fazendo push para o repositório...
git push
if %errorlevel% neq 0 (
    echo ERRO: Falha ao fazer push!
    pause
    exit /b 1
)
echo Push realizado com sucesso!
echo.

echo ========================================
echo GUIA PRATICO ATUALIZADO!
echo ========================================
echo.
echo ✅ ALTERACOES APLICADAS:
echo    - Hero title: Guia Pratico de Naturopatia
echo    - Hero subtitle: Transforme sua vocacao...
echo    - 17 modulos → 21 modulos (todas referencias)
echo    - Certificado ABRATH 600h
echo.
echo ✅ NOVA SECAO CERTIFICACOES:
echo    - Imagem reconhecimento MEC
echo    - Imagem extensao Unifatec
echo    - Lista completa de beneficios
echo.
echo ✅ REMOVIDO:
echo    - Secao Prova Social (depoimentos)
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
echo.

pause

