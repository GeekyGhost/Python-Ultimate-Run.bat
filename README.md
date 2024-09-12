# Using run.bat for Python Projects

## Introduction
This README explains how to use the `run.bat` script to set up and run Python projects on Windows systems. The script automates virtual environment creation, dependency installation, and script execution.

## Prerequisites
- Windows operating system
- Python 3.6 or higher installed and added to the system PATH
- Git (optional, for version control)

## Quick Start Guide

1. Place `run.bat` in your Python project's root directory.
2. Ensure you have a `requirements.txt` file listing your project's dependencies.
3. Double-click `run.bat` or run it from Command Prompt:
   ```
   run.bat
   ```

## What run.bat Does

1. Checks for Python installation
2. Creates a virtual environment (if it doesn't exist)
3. Activates the virtual environment
4. Upgrades pip to the latest version
5. Installs required packages from `requirements.txt`
6. Runs the main Python script specified in the `MAIN_SCRIPT` variable

## Customizing run.bat

You can customize the following variables in `run.bat`:

- `VENV_DIR`: Name of the virtual environment directory (default: "venv")
- `REQUIREMENTS_FILE`: Name of the requirements file (default: "requirements.txt")
- `MAIN_SCRIPT`: Name of your main Python script (default: "main.py")
- `PYTHON_CMD`: Python command to use (default: "python")
- `ADDITIONAL_ARGS`: Any additional arguments to pass to your Python script

## Troubleshooting

If `run.bat` doesn't work as expected:

1. Run it from Command Prompt to see detailed output:
   ```
   run.bat
   ```
2. Ensure Python is installed and added to your system PATH.
3. Check if you have necessary permissions to create directories and install packages.
4. Verify that your `requirements.txt` and main Python script exist in the same directory as `run.bat`.

## Manual Setup

If `run.bat` fails, you can set up the environment manually:

1. Create a virtual environment:
   ```
   python -m venv venv
   ```
2. Activate the virtual environment:
   ```
   venv\Scripts\activate
   ```
3. Install required packages:
   ```
   pip install --upgrade pip
   pip install -r requirements.txt
   ```
4. Run your main script:
   ```
   python your_script.py
   ```

## Additional Notes

- The script creates a local virtual environment, ensuring your project's dependencies don't interfere with other Python projects.
- You can easily share your project by including `run.bat` and `requirements.txt` along with your Python scripts.
- For any persistent issues, check your project's configuration or seek help from the project maintainers.
