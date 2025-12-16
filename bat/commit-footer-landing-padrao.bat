@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Footer Landing Padrao Site
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
git commit -m "feat: aplicar css footer padrao site principal na landing - Footer background: gradient verde 1a4d2e → 2c5530 - Footer sections: grid responsivo auto-fit minmax(250px) - Links footer: cor branca 80%%, hover dourado com translateX - Social links: circulos dourados, hover inverte cores - Footer bottom: flex space-between com border-top - Botao scroll-up: verde 4a7c59, hover dourado - Responsividade: 768px (1 col center) e 480px (compacto) - Alinhamento: identico ao site principal"
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
echo FOOTER PADRONIZADO!
echo ========================================
echo.
echo ✅ ESTILOS APLICADOS:
echo    - Background: gradient verde escuro
echo    - Grid: auto-fit minmax(250px, 1fr)
echo    - Links: branco 80%%, hover dourado
echo    - Social: circulos dourados
echo.
echo ✅ EFEITOS:
echo    - Hover: translateX(5px) nos links
echo    - Hover social: inverte cores
echo    - Border-top: footer-bottom
echo.
echo ✅ RESPONSIVIDADE:
echo    - 768px: 1 coluna centralizada
echo    - 480px: compacto otimizado
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
echo.
echo Footer da landing agora identico ao site principal!
echo.

pause
