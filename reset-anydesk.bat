@echo off
title AnyDesk Timer Fix
color 0A

:: Verifica se o script esta rodando como Administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Solicitando permissao de Administrador...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo ==========================================
echo       REMOVENDO BLOQUEIO DO ANYDESK
echo ==========================================
echo.

echo [1/4] Encerrando processos e servico do AnyDesk...
net stop AnyDesk >nul 2>&1
taskkill /F /IM AnyDesk.exe /T >nul 2>&1

echo [2/4] Removendo o arquivo service.conf...
if exist "C:\ProgramData\AnyDesk\service.conf" (
    del /F /Q "C:\ProgramData\AnyDesk\service.conf"
    echo       Arquivo removido com sucesso!
) else (
    echo       O arquivo service.conf nao foi encontrado.
)

echo [3/4] Reiniciando o servico do AnyDesk...
net start AnyDesk >nul 2>&1

echo [4/4] Iniciando o AnyDesk...
if exist "%ProgramFiles(x86)%\AnyDesk\AnyDesk.exe" (
    start "" "%ProgramFiles(x86)%\AnyDesk\AnyDesk.exe"
) else if exist "%ProgramFiles%\AnyDesk\AnyDesk.exe" (
    start "" "%ProgramFiles%\AnyDesk\AnyDesk.exe"
) else (
    echo       Abra o AnyDesk manualmente pelo menu Iniciar.
)

echo.
echo ==========================================
echo       PROCESSO CONCLUIDO COM SUCESSO!
echo ==========================================
timeout /t 4 >nul
exit
