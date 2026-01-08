@echo off
REM === Crear .gitkeep en todas las carpetas y subcarpetas de X:\Plantillas documentos\RAINBOW CORPORATION ===

set "BASEDIR=X:\Plantillas documentos\RAINBOW CORPORATION"

echo Se creara un archivo .gitkeep en TODAS las carpetas y subcarpetas de:
echo   %BASEDIR%
echo Si ya existe, se dejara como esta.
pause

REM Cambiar al directorio base
pushd "%BASEDIR%" || (
    echo ERROR: No se puede acceder a "%BASEDIR%".
    pause
    goto :eof
)

for /R /D %%D in (*) do (
    if not exist "%%D\.gitkeep" (
        echo Creando "%%D\.gitkeep"
        type nul > "%%D\.gitkeep"
        attrib +h "%%D\.gitkeep"
    )
)

popd

echo.
echo PROCESO TERMINADO.
pause
