@echo off
setlocal enabledelayedexpansion

:: Configuration (you can adjust these as needed)
set "VENV_DIR=venv"
set "REQUIREMENTS_FILE=requirements.txt"
set "MAIN_SCRIPT=variational_inference_calculator.py"
set "PYTHON_CMD=python"
set "ADDITIONAL_ARGS="

:: Function to print a separator line
:separator
echo ================================================================================
goto :eof

:: Check if Python is installed
where %PYTHON_CMD% >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed or not in the PATH. Please install Python and try again.
    pause
    exit /b 1
)

:: Create virtual environment if it doesn't exist
if not exist "%VENV_DIR%" (
    call :separator
    echo Creating a new virtual environment in "%VENV_DIR%"...
    %PYTHON_CMD% -m venv "%VENV_DIR%"
    if !errorlevel! neq 0 (
        echo Failed to create virtual environment.
        pause
        exit /b 1
    )
)

:: Activate the virtual environment
call :separator
echo Activating the virtual environment...
call "%VENV_DIR%\Scripts\activate.bat"
if !errorlevel! neq 0 (
    echo Failed to activate virtual environment.
    pause
    exit /b 1
)

:: Upgrade pip to the latest version
call :separator
echo Upgrading pip to the latest version...
pip install --upgrade pip
if !errorlevel! neq 0 (
    echo Failed to upgrade pip.
    pause
    exit /b 1
)

:: Install or update required packages
if exist "%REQUIREMENTS_FILE%" (
    call :separator
    echo Installing required packages from "%REQUIREMENTS_FILE%"...
    pip install --upgrade -r "%REQUIREMENTS_FILE%"
    if !errorlevel! neq 0 (
        echo Failed to install required packages.
        pause
        exit /b 1
    )
) else (
    echo "%REQUIREMENTS_FILE%" not found. Skipping package installation.
)

:: Check if the main script exists
if not exist "%MAIN_SCRIPT%" (
    echo "%MAIN_SCRIPT%" not found. Please ensure the script exists in the current directory.
    pause
    exit /b 1
)

:: Launch the main script
call :separator
echo Launching "%MAIN_SCRIPT%"...
%PYTHON_CMD% "%MAIN_SCRIPT%" %ADDITIONAL_ARGS%
if !errorlevel! neq 0 (
    echo An error occurred while running "%MAIN_SCRIPT%".
    pause
    exit /b 1
)

echo.
echo Application closed successfully.
pause
