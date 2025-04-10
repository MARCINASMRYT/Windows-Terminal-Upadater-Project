@echo off
title WINDOWS TERMINAL UPDATER
color 0A

:Start
cls
echo ================================
echo    WINDOWS TERMINAL UPDATER
echo ================================
echo.

rem Simulate checking for updates
echo Checking for updates...
timeout /t 2 >nul

rem Simulate current version
set "current_version=1.0.0"
set "latest_version=2.0.0"

echo Current version: %current_version%
echo Latest version available: %latest_version%
echo.

rem Simulate update process
if "%current_version%"=="%latest_version%" (
    echo You are already using the latest version.
    echo No updates are required.
    echo.
    goto End
)

echo Downloading update...
echo.

rem Simulate download progress
set /a total=10
for /L %%i in (1,1,%total%) do (
    set /a progress=%%i*10
    setlocal enabledelayedexpansion
    set "bar="
    for /L %%j in (1,1,%%i) do set "bar=!bar!#"
    echo [%%i%%] !bar! !progress!%% downloaded.
    timeout /t 1 >nul
    endlocal
)

echo.
echo Installing update...
timeout /t 3 >nul

rem Create a new batch file with command prompt simulation
echo @echo off > WINDOWS_TERMINAL_2.0.bat
echo echo Congratulations! You have successfully installed the fake updater! >> WINDOWS_TERMINAL_2.0.bat
echo echo. >> WINDOWS_TERMINAL_2.0.bat
echo :CommandPrompt >> WINDOWS_TERMINAL_2.0.bat
echo echo ================================ >> WINDOWS_TERMINAL_2.0.bat
echo echo Welcome to the Windows Terminal >> WINDOWS_TERMINAL_2.0.bat
echo echo Please enter a command: >> WINDOWS_TERMINAL_2.0.bat
echo set /p user_command="> " >> WINDOWS_TERMINAL_2.0.bat
echo. >> WINDOWS_TERMINAL_2.0.bat
echo rem Check if the user entered a command >> WINDOWS_TERMINAL_2.0.bat
echo if "%%user_command%%"=="" ( >> WINDOWS_TERMINAL_2.0.bat
echo     echo You did not enter a command. >> WINDOWS_TERMINAL_2.0.bat
echo     goto CommandPrompt >> WINDOWS_TERMINAL_2.0.bat
echo ) >> WINDOWS_TERMINAL_2.0.bat
echo. >> WINDOWS_TERMINAL_2.0.bat
echo rem Simulate checking for a valid command >> WINDOWS_TERMINAL_2.0.bat
echo echo You entered: %%user_command%% >> WINDOWS_TERMINAL_2.0.bat
echo echo This is not a real terminal. Please try again. >> WINDOWS_TERMINAL_2.0.bat
echo goto CommandPrompt >> WINDOWS_TERMINAL_2.0.bat
echo. >> WINDOWS_TERMINAL_2.0.bat
echo :StupidMessage >> WINDOWS_TERMINAL_2.0.bat
echo echo You are stupid! I am turning it off, sorry for you. >> WINDOWS_TERMINAL_2.0.bat
echo echo Press any key to exit... >> WINDOWS_TERMINAL_2.0.bat
echo pause >nul >> WINDOWS_TERMINAL_2.0.bat
echo exit >> WINDOWS_TERMINAL_2.0.bat

echo Update installed successfully!
echo You are now running version %latest_version%.
echo A funny message has been installed as "WINDOWS_TERMINAL_2.0.bat".
echo.
goto End

:End
echo ================================
echo Press any key to exit...
pause >nul
exit