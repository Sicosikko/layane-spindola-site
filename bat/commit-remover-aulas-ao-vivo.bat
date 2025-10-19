@echo off
echo ========================================
echo    REMOVER REFERENCIAS A AULAS AO VIVO
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
git commit -m "fix: Remover todas as referencias a aulas ao vivo - aulas sao gravadas - Secao Conteudo: Aulas e mentorias ao vivo - Aulas gravadas em video - Secao Acesso Imediato: aulas e mentorias ao vivo conforme agenda - Todas as aulas gravadas disponiveis - FAQ: E as aulas ao vivo - As aulas sao gravadas ou ao vivo - Enfase em assistir no proprio ritmo sem pressa"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! REFERENCIAS REMOVIDAS!
    echo ========================================
    echo.
    echo ✅ Todas as mencoes a aulas ao vivo foram removidas!
    echo.
    echo ALTERACOES REALIZADAS:
    echo.
    echo 📍 SECAO CONTEUDO/RECURSOS:
    echo    ANTES: Aulas e mentorias ao vivo
    echo           Com agenda programada, pra tirar duvidas...
    echo.
    echo    DEPOIS: Aulas gravadas em video
    echo            Assista quantas vezes quiser, no seu ritmo, sem pressa.
    echo.
    echo 📍 SECAO ACESSO IMEDIATO:
    echo    ANTES: Contato de suporte ao aluno, aulas e mentorias
    echo           ao vivo conforme agenda programatica.
    echo.
    echo    DEPOIS: Todas as aulas gravadas disponiveis pra voce
    echo            assistir quando quiser, no seu tempo.
    echo.
    echo 📍 FAQ:
    echo    ANTES: E as aulas ao vivo?
    echo           Sao 17 sessoes programadas com agenda...
    echo           Se perder alguma, tem gravacao + replay...
    echo.
    echo    DEPOIS: As aulas sao gravadas ou ao vivo?
    echo            Todas as aulas sao gravadas! Voce assiste
    echo            quando quiser, quantas vezes precisar,
    echo            no seu ritmo. Sem pressa, sem perder nada.
    echo.
    echo BENEFICIOS DESTACADOS:
    echo ✅ Assista quando quiser
    echo ✅ Quantas vezes precisar
    echo ✅ No seu ritmo
    echo ✅ Sem pressa
    echo ✅ Sem perder nada
    echo ✅ No seu tempo
    echo.
    echo RESULTADO:
    echo ✅ Informacao clara e precisa
    echo ✅ Enfase na flexibilidade
    echo ✅ Sem confusao sobre aulas ao vivo
    echo ✅ Aluno sabe que e tudo gravado
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Informacoes corrigidas! 🎥✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
