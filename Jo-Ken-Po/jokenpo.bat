chcp 65001
@echo off
title Jogo de Pedra-Papel-Tesoura-Lagarto-Spock
color 0a

setlocal enabledelayedexpansion

:menu
cls
echo.
echo ╔═════════════════════════════════════════════════════╗
echo ║                                                     ║
echo ║       Jogo de Pedra-Papel-Tesoura-Lagarto-Spock     ║
echo ║                                                     ║
echo ║    ══════════════════════════════════════════════   ║
echo ║                                                     ║ 
echo ║ Escolha sua jogada:                                 ║
echo ║  1. Pedra                                           ║
echo ║  2. Papel                                           ║
echo ║  3. Tesoura                                         ║
echo ║  4. Lagarto                                         ║
echo ║  5. Spock                                           ║
echo ║  6. Sair                                            ║
echo ║                                                     ║
echo ╚═════════════════════════════════════════════════════╝
echo.

set /p choice=Escolha um número: 

if "%choice%"=="1" (
    set player_choice=Pedra
) else if "%choice%"=="2" (
    set player_choice=Papel
) else if "%choice%"=="3" (
    set player_choice=Tesoura
) else if "%choice%"=="4" (
    set player_choice=Lagarto
) else if "%choice%"=="5" (
    set player_choice=Spock
) else if "%choice%"=="6" (
    echo Saindo...
    timeout /t 2 >nul
    exit
) else (
    echo Opção inválida. Tente novamente.
    timeout /t 2 >nul
    goto menu
)

set /a computer_choice=!random! %% 5 + 1

if !computer_choice! equ 1 (
    set computer_choice=Pedra
) else if !computer_choice! equ 2 (
    set computer_choice=Papel
) else if !computer_choice! equ 3 (
    set computer_choice=Tesoura
) else if !computer_choice! equ 4 (
    set computer_choice=Lagarto
) else (
    set computer_choice=Spock
)

echo.
echo Você escolheu: %player_choice%
echo O computador escolheu: %computer_choice%
echo.

if "%player_choice%"=="Pedra" (
    if "%computer_choice%"=="Tesoura" (
        echo Pedra quebra Tesoura. Você venceu!
    ) else if "%computer_choice%"=="Lagarto" (
        echo Pedra esmaga Lagarto. Você venceu!
    ) else if "%computer_choice%"=="Papel" (
        echo Papel cobre Pedra. Você perdeu!
    ) else if "%computer_choice%"=="Spock" (
        echo Spock vaporiza Pedra. Você perdeu!
    ) else (
        echo Empate!
    )
) else if "%player_choice%"=="Papel" (
    if "%computer_choice%"=="Pedra" (
        echo Papel cobre Pedra. Você venceu!
    ) else if "%computer_choice%"=="Spock" (
        echo Papel refuta Spock. Você venceu!
    ) else if "%computer_choice%"=="Tesoura" (
        echo Tesoura corta Papel. Você perdeu!
    ) else if "%computer_choice%"=="Lagarto" (
        echo Lagarto come Papel. Você perdeu!
    ) else (
        echo Empate!
    )
) else if "%player_choice%"=="Tesoura" (
    if "%computer_choice%"=="Papel" (
        echo Tesoura corta Papel. Você venceu!
    ) else if "%computer_choice%"=="Lagarto" (
        echo Tesoura mata Lagarto. Você venceu!
    ) else if "%computer_choice%"=="Pedra" (
        echo Pedra quebra Tesoura. Você perdeu!
    ) else if "%computer_choice%"=="Spock" (
        echo Spock quebra Tesoura. Você perdeu!
    ) else (
        echo Empate!
    )
) else if "%player_choice%"=="Lagarto" (
    if "%computer_choice%"=="Papel" (
        echo Lagarto come Papel. Você venceu!
    ) else if "%computer_choice%"=="Spock" (
        echo Lagarto envenena Spock. Você venceu!
    ) else if "%computer_choice%"=="Tesoura" (
        echo Tesoura mata Lagarto. Você perdeu!
    ) else if "%computer_choice%"=="Pedra" (
        echo Pedra esmaga Lagarto. Você perdeu!
    ) else (
        echo Empate!
    )
) else if "%player_choice%"=="Spock" (
    if "%computer_choice%"=="Tesoura" (
        echo Spock quebra Tesoura. Você venceu!
    ) else if "%computer_choice%"=="Pedra" (
        echo Spock vaporiza Pedra. Você venceu!
    ) else if "%computer_choice%"=="Papel" (
        echo Papel refuta Spock. Você perdeu!
    ) else if "%computer_choice%"=="Lagarto" (
        echo Lagarto envenena Spock. Você perdeu!
    ) else (
        echo Empate!
    )
)

pause
goto menu
