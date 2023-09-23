@echo off
chcp 65001 > nul
color 0B
title https://github.com/OtaconEvil

:: Verificar si se está ejecutando como administrador
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if "%errorlevel%"=="0" (
    echo Ejecutando con privilegios de administrador...
    timeout /t 2 > nul
) else (
    echo Este script debe ejecutarse como administrador.
    pause
    exit
)

color 0A

:menu
cls
echo.
echo.
echo             ------------------------------
echo             ^|     Menú de Drivers       ^|
echo             ------------------------------
echo.
echo.
echo   [1] Exportar drivers
echo   [2] Importar drivers
echo   [3] Salir
echo.
echo             ------------------------------
echo.
set /p option=Selecciona una opción ([1-3]):

if "%option%"=="1" (
    set /p backup_dir=Ingresa la ubicación de respaldo para los drivers:
    if "%backup_dir%"=="" (
        echo No se ha ingresado una ubicación de respaldo válida. Operación cancelada.
        pause
    ) else (
        echo Exportando drivers a %backup_dir%...
        dism.exe /online /export-driver /destination:"%backup_dir%" > nul
        echo.
        echo Drivers exportados con éxito a %backup_dir%.
        pause
    )
) else if "%option%"=="2" (
    set /p driver_dir=Ingresa la ubicación de los drivers a importar:
    if "%driver_dir%"=="" (
        echo No se ha ingresado una ubicación de drivers válida. Operación cancelada.
        pause
    ) else (
        echo Importando drivers desde %driver_dir%...
        dism.exe /online /add-driver /driver:"%driver_dir%" /recurse /forceunsigned > nul
        echo.
        echo Drivers importados con éxito desde %driver_dir%.
        pause
    )
) else if "%option%"=="3" (
    echo Saliendo...
    exit
) else (
    if "%option%"=="" (
        echo No se ha ingresado ninguna opción. Por favor, selecciona una opción válida.
        pause
    ) else (
        echo Opción inválida. Por favor, selecciona una opción válida.
        pause
    )
)

goto :menu
