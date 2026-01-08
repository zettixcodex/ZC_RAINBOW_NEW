@echo off
REM === Borrar todos los README*.* desde X:\Plantillas documentos\RAINBOW CORPORATION ===

set "BASEDIR=X:\Plantillas documentos\RAINBOW CORPORATION"

echo Vas a BORRAR todos los archivos README*.* en:
echo   %BASEDIR%
echo y todas sus subcarpetas.
pause

REM Cambiar al directorio base
pushd "%BASEDIR%" || (
    echo ERROR: No se puede acceder a "%BASEDIR%".
    pause
    goto :eof
)

for /R %%F in (README*.*) do (
    echo Borrando "%%F"
    del /F /Q "%%F"
)

popd

echo.
echo PROCESO TERMINADO.
pause