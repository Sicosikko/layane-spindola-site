@echo off
echo ========================================
echo    SUBSTITUIR EMOJIS POR ICONES FONT AWESOME PREMIUM
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
git commit -m "feat: Substituir todos os emojis por icones Font Awesome premium para estetica melhorada - Hero stats: fa-book-open, fa-graduation-cap - Beneficios: fa-user-md, fa-star, fa-heart - Sessoes: fa-heartbeat, fa-leaf, fa-briefcase-medical - Conteudo: fa-certificate, fa-graduation-cap, fa-book, fa-file-pdf, fa-video, fa-award, fa-headset - Garantia: fa-shield-alt, fa-lock, fa-heart - CTAs: fa-leaf - CSS: Cores #4a7c59 e #4f772d, text-shadow, hover effects, transitions - Design premium e consistente em toda landing page"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! ICONES PREMIUM APLICADOS!
    echo ========================================
    echo.
    echo ✅ Todos os emojis foram substituidos!
    echo.
    echo ICONES APLICADOS:
    echo.
    echo 📍 HERO STATS:
    echo    - Logo ABRATH ^(imagem^)
    echo    - fa-book-open ^(Modulos^)
    echo    - fa-graduation-cap ^(Aulas^)
    echo.
    echo 📍 BENEFICIOS:
    echo    - fa-user-md ^(Liberdade na carreira^)
    echo    - fa-star ^(Impacto imediato^)
    echo    - fa-heart ^(Equilibrio pessoal^)
    echo.
    echo 📍 SESSOES DO CURSO:
    echo    - fa-heartbeat ^(Conhecimentos Basicos^)
    echo    - fa-leaf ^(Terapeutico Naturalista^)
    echo    - fa-briefcase-medical ^(Profissional^)
    echo.
    echo 📍 CONTEUDO/RECURSOS:
    echo    - fa-certificate ^(Certificado 600h^)
    echo    - fa-graduation-cap ^(17 modulos^)
    echo    - fa-book ^(Apostila^)
    echo    - fa-file-pdf ^(PDFs^)
    echo    - fa-video ^(Aulas ao vivo^)
    echo    - fa-award ^(Certificado conclusao^)
    echo    - fa-headset ^(Suporte^)
    echo.
    echo 📍 GARANTIA:
    echo    - fa-shield-alt ^(Garantia 7 dias^)
    echo    - fa-lock ^(Compra segura^)
    echo    - fa-graduation-cap ^(Certificado^)
    echo    - fa-heart ^(Suporte^)
    echo.
    echo 📍 CTAs:
    echo    - fa-leaf ^(Botoes principais^)
    echo.
    echo ESTILIZACAO CSS:
    echo.
    echo .stat-icon, .sessao-icon, .conteudo-icon,
    echo .beneficio-icon, .garantia-icon {
    echo     color: #4a7c59;
    echo     transition: transform 0.4s ease;
    echo }
    echo.
    echo .stat-icon i {
    echo     text-shadow: 0 2px 10px rgba^(0,0,0,0.3^);
    echo }
    echo.
    echo :hover {
    echo     transform: scale^(1.1^) rotate^(5deg^);
    echo     color: #4f772d;
    echo }
    echo.
    echo RESULTADO:
    echo ✅ Design premium e profissional
    echo ✅ Icones estilizados e consistentes
    echo ✅ Animacoes suaves no hover
    echo ✅ Cores harmonizadas com o tema
    echo ✅ Sem mais emojis feios
    echo ✅ Estetica moderna e elegante
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Icones premium aplicados! 🎨✨
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
