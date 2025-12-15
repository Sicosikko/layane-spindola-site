@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Guia Naturopatia Completo
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
git commit -m "feat: atualizar landing guia pratico naturopatia completo - Hero: novo titulo e subtitulo (Fundamento da Carreira) - Modulos: 17 → 21 modulos (todas referencias) - Certificado: ABRATH 600h - Nova secao certificacoes com imagens MEC e Unifatec - Lista beneficios: 600h, 21 modulos, apostila PDF, acesso vitalicio - CSS certificacoes: arquivo separado com responsividade mobile - Removido: secao Prova Social (depoimentos) - Mobile first: responsivo para tablets (768px) e mobile (480px)"
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
echo GUIA PRATICO ATUALIZADO COMPLETO!
echo ========================================
echo.
echo ✅ HTML ATUALIZADO:
echo    - Hero title: Guia Pratico de Naturopatia
echo    - Hero subtitle: Transforme sua vocacao...
echo    - 17 → 21 modulos (6 referencias atualizadas)
echo    - Certificado ABRATH 600h
echo    - Nova secao certificacoes com imagens
echo    - Removido: secao de depoimentos
echo.
echo ✅ CSS CERTIFICACOES:
echo    - Arquivo: css/certificacoes.css
echo    - Grid responsivo (450px minimo)
echo    - Cards com hover premium
echo    - Imagens: object-fit contain, 300px altura
echo    - Lista beneficios: fundo verde, icones dourados
echo.
echo ✅ RESPONSIVIDADE:
echo    - Tablets (768px): grid 1 coluna, padding reduzido
echo    - Mobile (480px): imagens 200px, font-size ajustado
echo    - Mobile first: otimizado para celulares
echo.
echo ✅ IMAGENS ADICIONADAS:
echo    - MEC: Whats-App-Image-2025-10-30-at-10-51-48-1.jpg
echo    - Unifatec: Whats-App-Image-2025-10-30-at-10-51-48.jpg
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
echo.
echo Landing page do Guia Pratico completamente atualizada!
echo.

pause

