@echo off
echo Organizing Downloads folder...

set "downloads=%USERPROFILE%\Downloads"
set "images=%downloads%\Images"
set "documents=%downloads%\Documents"
set "archives=%downloads%\Archives"

mkdir "%images%" 2>nul
mkdir "%documents%" 2>nul
mkdir "%archives%" 2>nul

move "%downloads%\*.jpg" "%images%" >nul 2>&1
move "%downloads%\*.png" "%images%" >nul 2>&1
move "%downloads%\*.pdf" "%documents%" >nul 2>&1
move "%downloads%\*.zip" "%archives%" >nul 2>&1

echo Done!
pause
