@echo off
setlocal EnableExtensions

REM === Ruta raíz (UNC) ===
set "ROOT=\\SERVER2023\gmt\General_GMT_Data\Zettix Codex\Plantillas documentos\RAINBOW CORPORATION"

REM === Lista de directorios ===
call :EnsureReadme "G.01 ESTRUCTURA - PARAMETRIZABLE"
call :EnsureReadme "G.02 BBDDs GEN"
call :EnsureReadme "G.03 DEPARTAMENTOS"
call :EnsureReadme "G.05 CAMPAÑAS"
call :EnsureReadme "G.06 CONTENT LIBRARY"
call :EnsureReadme "G.07 REPORT LIBRARY"
call :EnsureReadme "G.08 STADISTICS"
call :EnsureReadme "G.09 ORCHESTRATION"
call :EnsureReadme "G.99 FRASES"
call :EnsureReadme "G.99 NOMBRES IDEADOS"
call :EnsureReadme "ZC_RAINBOW_TEMPLATE"
call :EnsureReadme "ZZZ G.66 ---- KNOWLEDGE"
call :EnsureReadme "ZZZ G.66 ---- LOGs"
call :EnsureReadme "ZZZ G.66 ---- MARKETING"

echo.
echo Listo.
exit /b 0

:EnsureReadme
set "DIRNAME=%~1"
set "TARGET=%ROOT%\%DIRNAME%"
set "README=%TARGET%\README.md"

if not exist "%TARGET%\" (
  echo [AVISO] No existe la carpeta: "%TARGET%"
  goto :eof
)

if exist "%README%" (
  echo [OK] Ya existe: "%README%"
  goto :eof
)

REM Crea un README.md simple con titulo y nota
(
  echo # %DIRNAME%
  echo.
  echo Este directorio forma parte de la estructura del repositorio **ZC_RAINBOW_NEW**.
  echo.
  echo ^- README creado para versionar la carpeta aunque este vacia.
) > "%README%"

echo [CREADO] "%README%"
goto :eof
