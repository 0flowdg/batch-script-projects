@echo off
setlocal enabledelayedexpansion
chcp 65001


:menu
cls
echo ╔══════════════════════════════════════════════════════════╗
echo ║        Bem-vindo ao Desafio de Contas Aleatórias!         ║
echo ╚══════════════════════════════════════════════════════════╝
echo.
set /a num1=!random! %% 100
set /a num2=!random! %% 100
set /a result=num1+num2

echo Resolva a seguinte conta:
echo !num1! + !num2! = ?
set /p userAnswer=Digite a resposta: 

if %userAnswer% equ %result% (
    echo Parabéns, você acertou!
) else (
    echo Resposta incorreta. Tente novamente.
)

pause
goto menu