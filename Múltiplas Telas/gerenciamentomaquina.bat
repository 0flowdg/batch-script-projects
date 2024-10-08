chcp 65001
@echo off
title Gerenciamento Máquina
color 0a
mode 60,30
:inicio
cls
echo.
echo ╔═════════════════════════════════════╗
echo ║        Gerenciamento Máquina        ║
echo ║       ═══════════════════════       ║
echo ║[1] Desligar a Máquina               ║
echo ║[2] Reiniciar a Máquina              ║
echo ║[3] Hibernar a Máquina               ║
echo ║[R] Retornar ao menu                 ║
echo ╚═════════════════════════════════════╝
set /p op=Digite uma opção:
if /i %op% equ c (goto:calculadora)

if /i %op% equ 1 (goto:shutdown)
if /i %op% equ 2 (goto:restart)
if /i %op% equ 3 (goto:hibernate)
if /i %op% equ r (call menuprincipal.bat)

:shutdown
shutdown /s /f /t 0
goto inicio

:restart
shutdown /r /f /t 0
goto inicio

:hibernate
shutdown /h
goto inicio