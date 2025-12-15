@echo off
chcp 65001 >nul
cd /d "%~dp0\.."
git show HEAD:html/guia-pratico-naturopatia.html > html/guia-pratico-naturopatia-backup.html
echo Arquivo backup criado: html/guia-pratico-naturopatia-backup.html
pause

