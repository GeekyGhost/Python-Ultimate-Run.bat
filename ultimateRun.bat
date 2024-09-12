@echo on
setlocal enabledelayedexpansion

set "VENV_DIR=venv"
set "REQUIREMENTS_FILE=requirements.txt"
set "MAIN_SCRIPT=my_script.py"
set "PYTHON_CMD=python"

echo Checking Python installation...
%PYTHON_CMD% --version
if %errorlevel% neq 0 (
    echo Python is not installed or not in the PATH.
    pause
    exit /b 1
)

echo Creating virtual environment...
%PYTHON_CMD% -m venv "%VENV_DIR%"
if %errorlevel% neq 0 (
    echo Failed to create virtual environment.
    pause
    exit /b 1
)

echo Activating virtual environment...
call "%VENV_DIR%\Scripts\activate.bat"
if %errorlevel% neq 0 (
    echo Failed to activate virtual environment.
    pause
    exit /b 1
)

echo Installing requirements...
pip install --upgrade pip
pip install -r "%REQUIREMENTS_FILE%"
if %errorlevel% neq 0 (
    echo Failed to install requirements.
    pause
    exit /b 1
)

echo Running main script...
%PYTHON_CMD% "%MAIN_SCRIPT%"
if %errorlevel% neq 0 (
    echo Failed to run main script.
    pause
    exit /b 1
)

echo Script completed successfully.
pause
