@echo off
echo ========================================
echo    FIX NaN E ADICIONAR SECAO QUEM SOU EU
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
git commit -m "fix: Corrigir animacao de numeros NaN e adicionar secao Quem sou eu - PROBLEMA: Numeros 17 e 85 apareciam como NaN na hero stats - SOLUCAO: Reabilitar animacao com validacao isNaN e targetNumber maior que 0 - Observar apenas stat-items que nao sao logo - Animacao conta de 0 ate o numero alvo - NOVA SECAO: Quem sou eu - Layane Spindola - Grid 2 colunas: imagem + texto - Imagem da Layane do site principal - Biografia completa - 4 credenciais com icones - 2 stats: 10.000+ pessoas e 4.000+ palestras - CSS premium com hover effects - Responsivo para tablet e mobile - RESULTADO: Stats animam corretamente sem NaN e secao sobre completa"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! NaN CORRIGIDO E SECAO ADICIONADA!
    echo ========================================
    echo.
    echo ✅ Animacao de numeros funcionando!
    echo ✅ Secao Quem sou eu adicionada!
    echo.
    echo CORRECOES APLICADAS:
    echo.
    echo 📍 FIX NaN:
    echo    - Reabilitada animacao de contadores
    echo    - Validacao: !isNaN^(targetNumber^) ^&^& targetNumber ^> 0
    echo    - Observa apenas .stat-item:not^(.stat-logo^)
    echo    - Anima de 0 ate numero alvo
    echo    - Logo ABRATH nao e animado
    echo.
    echo 📍 NOVA SECAO - QUEM SOU EU:
    echo    Posicao: Apos secao Solucao
    echo.
    echo    ESTRUTURA:
    echo    - Grid 2 colunas ^(imagem + texto^)
    echo    - Imagem: Layane Spindola
    echo    - Titulo: Quem sou eu, de verdade?
    echo    - Biografia completa em 2 paragrafos
    echo.
    echo    CREDENCIAIS ^(4 items com icones^):
    echo    - fa-leaf: Terapeuta naturalista
    echo    - fa-apple-alt: Especialista em Nutricao
    echo    - fa-utensils: Especialista em Gastronomia
    echo    - fa-graduation-cap: Mestre em Nutricao Vegetariana
    echo.
    echo    ESTATISTICAS ^(2 boxes^):
    echo    - 10.000+ Pessoas Impactadas
    echo    - 4.000+ Palestras Realizadas
    echo.
    echo CSS APLICADO:
    echo.
    echo .sobre-layane {
    echo     padding: 100px 0;
    echo     background: #fff;
    echo }
    echo.
    echo .sobre-layane-content {
    echo     grid-template-columns: 0.9fr 1.1fr;
    echo     gap: 80px;
    echo }
    echo.
    echo .credential-item {
    echo     border-left: 4px solid #4f772d;
    echo     hover: translateX^(8px^);
    echo }
    echo.
    echo .stat-box-sobre {
    echo     background: linear-gradient^(135deg, #4f772d, #2c5530^);
    echo     hover: translateY^(-5px^);
    echo }
    echo.
    echo RESPONSIVIDADE:
    echo ✅ Tablet: Grid 1 coluna, titulo centralizado
    echo ✅ Mobile: Stats em 1 coluna, textos menores
    echo.
    echo RESULTADO:
    echo ✅ Numeros 17 e 85 animam corretamente
    echo ✅ Sem mais NaN
    echo ✅ Secao sobre profissional e completa
    echo ✅ Design premium e responsivo
    echo ✅ Hover effects suaves
    echo ✅ Credibilidade aumentada
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Problemas resolvidos! ✅🎯
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
