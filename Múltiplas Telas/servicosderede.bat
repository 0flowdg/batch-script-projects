chcp 65001
@echo off
title Serviços de Rede
color 0a
mode 60,30
:inicio
cls
echo.
echo ╔═════════════════════════════════════╗
echo ║          Serviços de Rede           ║
echo ║      ════════════════════════       ║
echo ║[1] Navegador Web                    ║
echo ║[2] Vídeos do Youtube                ║
echo ║[3] Testar Conexão de Rede           ║
echo ║[4] Obter IP da Máquina              ║
echo ║[R] Retornar ao menu                 ║
echo ╚═════════════════════════════════════╝
set /p op=Digite uma opção:
if /i %op% equ c (goto:navweb)
if /i %op% equ c (goto:open_chrome)
if /i %op% equ c (goto:test_network)
if /i %op% equ c (goto:get_ip)
if /i %op% equ r (call menuprincipal.bat)

:navweb
start chrome
goto inicio

:open_chrome
start chrome "https://www.youtube.com/"
goto inicio

:test_network
ping google.com
pause
goto inicio

:get_ip
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IP Address"') do (
    set ip=%%a
)
echo Endereço IP da máquina: %ip:~1%
pause
goto inicio