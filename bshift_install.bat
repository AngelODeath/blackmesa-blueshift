@echo off

echo Mod folder: "C:\Program Files (x86)\Steam\steamapps\workshop\content\362890\2424633574"
echo Game folder: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa"
echo.

rem echo Script Path: %~dp0
rem echo Current path: "%cd%"
rem echo.
rem pushd "%~dp0\..\..\..\..\common\Black Mesa"

echo Navigating to Game folder 
cd "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa"
echo.

rem echo Current path: "%cd%"
rem echo.

echo We will delete old mod files (Blue Shift) from the game (Black Mesa).
echo To cancel, close this window.
echo.
pause

if exist bshift (
    echo Deleting directory: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift"
    @RD /s /q "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift"
)

if exist bshift.bat (
    echo Deleting file: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift.bat"
    del /q "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift.bat"
)

if exist bshift_oldUI.bat (
    echo Deleting file: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_oldUI.bat"
    del /q "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_oldUI.bat"
)

if exist bshift_gamelink.bat (
    echo Deleting file: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_gamelink.bat"
    del /q "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_gamelink.bat"
)

if exist bshift_uninstall.bat (
    echo Deleting file: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_uninstall.bat"
    del /q "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_uninstall.bat"
)

if exist bshift_icon.ico (
    echo Deleting file: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_icon.ico"
    del /q "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_icon.ico"
)

if exist bshift_install.bat (
    echo Deleting file: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_install.bat"
    del /q "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_install.bat"
)

if exist INSTALLATION.txt (
    echo Deleting file: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\INSTALLATION.txt"
    del /q "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\INSTALLATION.txt"
)

echo Cleanup complete. Proceeding to install.
echo To cancel, close this window.
echo.
pause

echo Copying everything...
xcopy /s /k "%~dp0" "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\"
echo.

echo Deleting unnecessary mod files from C:\Program Files (x86)\Steam\steamapps\common\Black Mesa
echo Deleting file: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_install.bat"
del /q "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bshift_install.bat"
echo Deleting file: "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\INSTALLATION.txt"
del /q "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\INSTALLATION.txt"
echo.

echo Starting Game with Mod endabled:
echo start "" "C:\Program Files (x86)\Steam\steamapps\common\Black Mesa\bms.exe" -game bshift %*
