@echo off
chcp 65001
mode 90,30
title Sorteio Aleatório

setlocal enabledelayedexpansion

REM Defina o número sorteado
set /a "numero_sorteado=%random% %% 50 + 1"
set /a "tentativas=0"
set /a "max_tentativas=5"

cls
:inicio
cls
echo ╔═════════════════════════════════════╗
echo ║         Jogo da Advinhação          ║
echo ╚═════════════════════════════════════╝
echo.
echo Seu objetivo é acertar o numero sorteado em até 5 tentativas, Boa sorte!
pause
goto sorteio
echo.

:sorteio

set /a "tentativas+=1"
set /a "tentativas_restantes=%max_tentativas% - %tentativas% + 1"
cls
echo ╔═════════════════════════════════════╗
echo ║              BOA SORTE !            ║
echo ╚═════════════════════════════════════╝
set /p "palpite=Digite um número entre 1 e 50 (tentativa %tentativas%/%max_tentativas%, tentativas restantes: %tentativas_restantes%): "

if %palpite% equ %numero_sorteado% (
    echo.
    echo Parabéns! Você acertou o número %numero_sorteado% em %tentativas% tentativas.
    echo.
    goto :end
) else (
    if %palpite% gtr 50 (
        echo.
        echo Por favor, digite um número entre 1 e 50.
    ) else (
        echo.
        echo Tentativa %tentativas%: Você errou. %tentativas_restantes% tentativas restantes.
		
    )
)

if %tentativas% lss %max_tentativas% (
    goto sorteio
) else (
    echo.
echo ╔═════════════════════════════════════╗
echo ║                LOSER                ║
echo ╚═════════════════════════════════════╝
    echo Suas %max_tentativas% tentativas acabaram. O número sorteado era %numero_sorteado%.
    echo.
)

:end
pause
goto inicio
