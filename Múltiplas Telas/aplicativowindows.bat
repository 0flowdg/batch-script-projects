chcp 65001
@echo off
title Aplicativo Windows
color 0a
mode 60,30
:inicio
cls
echo.
echo ╔═════════════════════════════════════╗
echo ║           Aplicativo Windows        ║
echo ║       ════════════════════════      ║
echo ║[1] Calculadora                      ║
echo ║[2] Bloco de Notas                   ║
echo ║[3] Paint                            ║
echo ║[4] Painel de Controle               ║
echo ║[5] Windows Explorer                 ║
echo ║[R] Retornar ao menu                 ║
echo ╚═════════════════════════════════════╝
set /p op=Digite uma opção:
if /i %op% equ 1 (goto:calculadora)
if /i %op% equ 2 (goto:blocodenotas)
if /i %op% equ 3 (goto:paint)
if /i %op% equ 4 (goto:paineldecontrole)
if /i %op% equ 5 (goto:windowsexplorer)
if /i %op% equ r (call menuprincipal.bat)

:calculadora 
start calc.exe
goto inicio

:blocodenotas 
start notepad.exe
goto inicio

:paint 
start mspaint.exe
goto inicio

:paineldecontrole 
start control.exe
goto inicio

:windowsexplorer 
start explorer.exe
goto inicio
