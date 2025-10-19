@echo off
echo ========================================
echo    COMMIT - COPYS COMPLETAS ADICIONADAS
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
git commit -m "feat: Adicionar copys completas otimizadas para conversao na landing page Naturopatia - Hero: Titulo e subtitulo atualizados com foco em missao e transformacao - Secao Solucao: Texto persuasivo com 3 beneficios principais - Prova Social: 3 depoimentos de alunas + estatisticas 1000+ alunas, 95%% confianca, 600h ABRATH - FAQ: 5 perguntas frequentes com accordion interativo - Garantia: Box destacado com garantia 7 dias 100%% reembolso - CTA Final: Titulo atualizado Pronto para Ser a Naturopata que o Mundo Precisa - Footer: Links termos, privacidade e disclaimer ABRATH - JavaScript: FAQ accordion com animacao suave - CSS: Estilos completos para todas novas secoes - Design: Cards depoimentos com aspas, hover effects, gradientes - Responsivo: Mobile-first para todas novas secoes - Copys: Tom conversacional, persuasivo e humanizado - Estrutura: Funil completo de conversao implementado"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! COPYS COMPLETAS ADICIONADAS!
    echo ========================================
    echo.
    echo ✅ Landing page com copys otimizadas para conversao!
    echo.
    echo NOVAS SECOES ADICIONADAS:
    echo.
    echo 1. SECAO DA SOLUCAO
    echo    - Titulo: O Guia Pratico de Naturopatia
    echo    - 2 paragrafos persuasivos
    echo    - 3 beneficios principais:
    echo      * Liberdade na carreira
    echo      * Impacto imediato
    echo      * Equilibrio pessoal
    echo    - Cards com hover deslizante
    echo.
    echo 2. PROVA SOCIAL
    echo    - Titulo com highlight dourado
    echo    - 3 depoimentos de alunas:
    echo      * Ana Silva - Terapeuta SP
    echo      * Maria Oliveira - Aluna 2024
    echo      * Julia Costa - Naturopata
    echo    - Aspas decorativas
    echo    - Avatar com emoji
    echo    - 3 estatisticas em cards verdes:
    echo      * 1.000+ alunas formadas
    echo      * 95%% confianca total
    echo      * 600h validado ABRATH
    echo.
    echo 3. FAQ INTERATIVO
    echo    - 5 perguntas frequentes
    echo    - Accordion com animacao
    echo    - Toggle + / - animado
    echo    - Hover effects
    echo    - Box contato final
    echo.
    echo 4. GARANTIA BOX
    echo    - Icone escudo
    echo    - Garantia 7 dias 100%%
    echo    - Background verde claro
    echo    - Borda verde escuro
    echo.
    echo 5. ATUALIZACOES HERO
    echo    - Titulo: Torne-se uma Naturopata Certificada
    echo    - Subtitulo: Imagine acordar todo dia...
    echo    - CTA: QUERO SER UMA NATUROPATA AGORA!
    echo.
    echo 6. ATUALIZACOES CTA FINAL
    echo    - Titulo: Pronto para Ser a Naturopata...
    echo    - Garantia box integrada
    echo    - 3 garantias com icones
    echo.
    echo 7. FOOTER
    echo    - Links: Termos / Privacidade
    echo    - Disclaimer ABRATH
    echo    - Hover effects
    echo.
    echo JAVASCRIPT ADICIONADO:
    echo ✅ FAQ accordion interativo
    echo ✅ Toggle + / - animado
    echo ✅ Fecha outros ao abrir um
    echo ✅ Max-height animado
    echo.
    echo CSS ADICIONADO:
    echo ✅ .curso-solucao - Secao solucao
    echo ✅ .beneficio-item - Cards beneficios
    echo ✅ .prova-social - Secao depoimentos
    echo ✅ .depoimento-card - Cards testemunhos
    echo ✅ .estatisticas - Stats boxes
    echo ✅ .garantia-box - Box garantia
    echo ✅ .faq-section - Secao FAQ
    echo ✅ .faq-item - Items accordion
    echo ✅ .footer-disclaimer - Disclaimer
    echo.
    echo DESIGN:
    echo ✅ Aspas decorativas 5rem
    echo ✅ Avatar circular gradiente
    echo ✅ Cards com hover elevacao
    echo ✅ Gradientes sutis backgrounds
    echo ✅ Border-radius 16-20px
    echo ✅ Shadows profundas
    echo ✅ Animacoes escalonadas
    echo.
    echo COPYS:
    echo ✅ Tom conversacional
    echo ✅ Persuasivo e humanizado
    echo ✅ Foco em transformacao
    echo ✅ Prova social forte
    echo ✅ Urgencia e escassez
    echo ✅ Reversao de risco
    echo.
    echo FUNIL DE CONVERSAO:
    echo 1. Hero - Captura atencao
    echo 2. Solucao - Apresenta beneficios
    echo 3. Sessoes - Mostra conteudo
    echo 4. Doencas - Prova valor
    echo 5. Recursos - Lista entregas
    echo 6. Acesso - Urgencia
    echo 7. Prova Social - Credibilidade
    echo 8. CTA Final - Conversao
    echo 9. FAQ - Remove objecoes
    echo.
    echo RESULTADO:
    echo - Copys completas e otimizadas
    echo - Design harmonioso e elegante
    echo - Funil de conversao completo
    echo - Prova social forte
    echo - FAQ remove objecoes
    echo - Garantia reduz risco
    echo.
    echo Aguarde 2-3 minutos e acesse:
    echo https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Landing page completa e otimizada! 🌿✨💚
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
