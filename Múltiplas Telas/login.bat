chcp 65001
@echo off
title Tela de Login

:login
cls
echo. 
echo ╔═════════════════════════════════════╗
echo ║      Bem-vindo à Tela de Login      ║
echo ╚═════════════════════════════════════╝
echo. 
set /p username=Usuário: 
set /p password=Senha: 

if "%username%"=="eu" (
    if "%password%"=="1234" (
        echo Login bem-sucedido!
        pause
        call menuprincipal.bat
        exit
    ) else (
        echo Senha incorreta. Tente novamente.
        timeout /t 2 >nul
        goto login
    )
) else (
    echo Usuário não encontrado. Tente novamente.
    timeout /t 2 >nul
    goto login
)



