@echo off
echo ========================================
echo    PUSH PARA GITHUB - SICOSIKKO
echo ========================================
echo.
echo Repositorio: Sicosikko/layane-spindola-site
echo.

echo Inicializando repositorio Git...
git init

echo.
echo Adicionando todos os arquivos...
git add .

echo.
echo Fazendo commit com descricao completa...
git commit -m "feat: Site completo Layane Spindola - Portal profissional otimizado para conversao

- Site responsivo com design moderno e acolhedor
- Cores verde/azul para evocar vitalidade e confianca
- Copy persuasivo focado em conversao
- 4 secoes principais: Hero, Sobre, Cursos, Ebook
- Formulario de captura de leads funcional
- SEO otimizado com meta tags completas
- Animações suaves e interatividade
- Configuracao para deploy (Netlify, Vercel, GitHub Pages)
- Pronto para producao"

echo.
echo Renomeando branch para main...
git branch -M main

echo.
echo Conectando com repositorio GitHub...
git remote add origin git@github.com:Sicosikko/layane-spindola-site.git

echo.
echo Fazendo push para GitHub...
git push -u origin main

echo.
echo ========================================
echo    PUSH REALIZADO COM SUCESSO!
echo ========================================
echo.
echo Repositorio: https://github.com/Sicosikko/layane-spindola-site
echo.
echo Proximos passos:
echo 1. Verifique se o push funcionou no GitHub
echo 2. Faça o deploy via Netlify (recomendado)
echo 3. Teste o site em diferentes dispositivos
echo 4. Compartilhe a URL com Layane
echo.
echo Deploy via Netlify:
echo 1. Acesse: https://netlify.com
echo 2. Conecte com GitHub
echo 3. Selecione: Sicosikko/layane-spindola-site
echo 4. Deploy automático em 2 minutos
echo.
echo Pressione qualquer tecla para sair...
pause >nul
