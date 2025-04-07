@echo off
title Expo Project Creator - by Paulo
echo ================================
echo Expo React Native Project Creator
echo ================================
set /p projectName=Enter your project name: 

echo.
echo Creating project "%projectName%" using the "blank" template...
echo.

npx create-expo-app %projectName% --template blank

if %errorlevel% neq 0 (
    echo An error occurred while creating the project. Please check the Expo CLI or project name.
    pause
    exit /b
)

cd %projectName%

echo.
echo Opening project in WebStorm...
echo.

REM Update the path below if your WebStorm version is different
start "" "C:\Program Files\JetBrains\WebStorm 2023.3\bin\webstorm64.exe" .

exit
