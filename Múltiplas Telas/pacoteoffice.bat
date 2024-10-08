chcp 65001
@echo off
title Pacote Office
color 0a
mode 60,30
:inicio
cls
echo.
echo ╔═════════════════════════════════════╗
echo ║           Pacote Office             ║
echo ║       ════════════════════════      ║
echo ║[1] Word                             ║
echo ║[2] Excel                            ║
echo ║[3] Power Point                      ║
echo ║[4] Acess                            ║
echo ║[R] Retornar ao menu                 ║
echo ╚═════════════════════════════════════╝
set /p op=Digite uma opção:
if /i %op% equ 1 (goto:word)
if /i %op% equ 2 (goto:excel)
if /i %op% equ 3 (goto:slides)
if /i %op% equ 4 (goto:acess)
if /i %op% equ r (call menuprincipal.bat)

:word
start winword.exe
goto inicio

:excel
start excel.exe
goto inicio

:slides
start powerpnt.exe
goto inicio

:acess
start msaccess.exe
goto inicio