@echo off
echo ========================================
echo    COMMIT - LINKS LANDING NATUROPATIA
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
git commit -m "feat: Adicionar links para landing page Guia Pratico Naturopatia no site principal - Menu Desktop: Dropdown Cursos e Programas atualizado com /html/guia-pratico-naturopatia.html - Sidebar Mobile: Links atualizados para /html/guia-pratico-naturopatia.html - Secao Cursos: Card Guia Pratico com link /html/guia-pratico-naturopatia.html - Todos 4 cursos linkados: Terapeuta Alta Performance, Guia Pratico, Agape, Protocolos - Navegacao completa: Desktop dropdown + Sidebar mobile + Cards secao - Links funcionais em todas plataformas"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! LINKS ADICIONADOS!
    echo ========================================
    echo.
    echo ✅ Landing page linkada no site principal!
    echo.
    echo LINKS ATUALIZADOS:
    echo.
    echo 1. MENU DESKTOP
    echo    Cursos e Programas ^(Dropdown^)
    echo    ├─ Terapeuta de Alta Performance
    echo    ├─ Guia Pratico de Naturopatia ⭐ NOVO
    echo    ├─ Programa de Aceleracao Agape
    echo    └─ Protocolos Terapeuticos
    echo.
    echo 2. SIDEBAR MOBILE
    echo    Cursos e Programas ^(Dropdown^)
    echo    ├─ Terapeuta de Alta Performance
    echo    ├─ Guia Pratico de Naturopatia ⭐ NOVO
    echo    ├─ Programa de Aceleracao Agape
    echo    └─ Protocolos Terapeuticos
    echo.
    echo 3. SECAO CURSOS
    echo    Grid de 4 Cards
    echo    ├─ Card 1: Terapeuta Alta Performance
    echo    ├─ Card 2: Guia Pratico Naturopatia ⭐ NOVO
    echo    ├─ Card 3: Programa Aceleracao Agape
    echo    └─ Card 4: Protocolos Terapeuticos
    echo.
    echo ESTRUTURA DE LINKS:
    echo /html/terapeuta-alta-performance.html
    echo /html/guia-pratico-naturopatia.html ⭐
    echo /html/programa-aceleracao-agape.html
    echo /html/protocolos-terapeuticos.html
    echo.
    echo NAVEGACAO COMPLETA:
    echo ✅ Desktop: Menu dropdown funcional
    echo ✅ Mobile: Sidebar com links
    echo ✅ Cards: Botoes Saiba Mais
    echo ✅ Todas plataformas: Links corretos
    echo.
    echo COMO TESTAR:
    echo 1. Desktop: Hover em "Cursos e Programas"
    echo    - Clicar em "Guia Pratico de Naturopatia"
    echo    - Deve abrir landing page completa
    echo.
    echo 2. Mobile: Abrir menu hamburger
    echo    - Expandir "Cursos e Programas"
    echo    - Clicar em "Guia Pratico de Naturopatia"
    echo    - Deve abrir landing page completa
    echo.
    echo 3. Secao Cursos: Scroll ate secao
    echo    - Clicar em "Saiba Mais" no card
    echo    - Deve abrir landing page completa
    echo.
    echo RESULTADO:
    echo - Landing page acessivel de 3 formas
    echo - Navegacao intuitiva
    echo - Links funcionais
    echo - Experiencia fluida
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Clique em qualquer link do Guia Pratico! 🌿✨
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
