@echo off
echo ========================================
echo    COMMIT - LANDING PAGE NATUROPATIA
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
git commit -m "feat: Criar landing page completa do Guia Pratico de Naturopatia - Hero section com video embed e badge premium - 3 sessoes do curso com icones e listas detalhadas - Grid de 6 cards do Guia Pratico 50 Doencas - Lista de conteudo do curso com 7 beneficios - Secao acesso imediato com imagem e badges flutuantes - CTA final com precos parcelado e a vista - Design responsivo completo mobile/tablet/desktop - Animacoes fade-in ao scroll - CSS dedicado curso-landing.css - Integrado com header e footer existentes"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Landing page criada com sucesso!
    echo.
    echo ESTRUTURA DA PAGINA:
    echo.
    echo 1. HERO SECTION
    echo    - Titulo: Curso de Naturopatia + Guia Pratico
    echo    - Badge premium animado
    echo    - Video embed YouTube
    echo    - CTA: SABER MAIS
    echo.
    echo 2. SESSOES DO CURSO ^(3 cards^)
    echo    - Conhecimentos Basicos em Saude
    echo    - Conhecimento Terapeutico Naturalista
    echo    - Conhecimento Profissional
    echo    - Icones tematicos
    echo    - Listas detalhadas
    echo.
    echo 3. GUIA PRATICO - 50 DOENCAS ^(6 cards^)
    echo    - O que e a doenca
    echo    - Quais as causas da doenca
    echo    - Alimentacao indicada
    echo    - Alimentacao nao indicada
    echo    - Fitoterapicos
    echo    - Terapias naturais aplicadas
    echo    - Imagens ilustrativas
    echo.
    echo 4. O QUE VOCE VAI ENCONTRAR
    echo    - 7 beneficios com checkmarks
    echo    - Certificado 600 horas ABRATH
    echo    - 17 modulos - 85 aulas EAD
    echo    - Apostila ilustrada PDF
    echo    - Mentorias ao vivo
    echo    - Suporte ao aluno
    echo.
    echo 5. ACESSO IMEDIATO
    echo    - Layout grid 2 colunas
    echo    - Imagem do curso
    echo    - 4 badges flutuantes
    echo    - CTA: QUERO SER UM^(A^) NATUROPATA
    echo.
    echo 6. CTA FINAL
    echo    - Titulo: Curso de Naturopatia
    echo    - Preco parcelado: 12x 129,80
    echo    - Preco a vista: 1.298,00
    echo    - Botao WhatsApp integrado
    echo    - Garantias de seguranca
    echo.
    echo RECURSOS TECNICOS:
    echo ✅ HTML5 semantico
    echo ✅ CSS3 com Grid e Flexbox
    echo ✅ Animacoes fade-in ao scroll
    echo ✅ Intersection Observer API
    echo ✅ Smooth scroll interno
    echo ✅ Video embed responsivo 16:9
    echo ✅ Hover effects em todos cards
    echo ✅ Mobile-first responsive
    echo.
    echo RESPONSIVIDADE:
    echo Desktop ^(1024px+^): Grid 3 colunas
    echo Tablet ^(768px^): Grid 2 colunas / 1 coluna
    echo Mobile ^(480px^): Grid 1 coluna
    echo.
    echo DESIGN:
    echo - Paleta verde premium
    echo - Tipografia Playfair + Montserrat
    echo - Shadows suaves
    echo - Border-radius 12-16px
    echo - Gradientes sutis
    echo - Icones emoji
    echo.
    echo Aguarde 2-3 minutos e acesse:
    echo https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Proximos passos:
    echo 1. Substituir VIDEO_ID pelo ID real do YouTube
    echo 2. Atualizar numero WhatsApp no CTA final
    echo 3. Criar landing pages dos outros cursos
    echo 4. Adicionar testemunhos especificos
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
