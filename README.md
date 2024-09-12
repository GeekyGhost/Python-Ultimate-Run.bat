# README: Running Python Projects with run.bat Script

## Table of Contents
1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Quick Start Guide](#quick-start-guide)
4. [Detailed Guide for Developers](#detailed-guide-for-developers)
5. [Customizing the Script](#customizing-the-script)
6. [Troubleshooting](#troubleshooting)
7. [Additional Notes](#additional-notes)
8. [Conclusion](#conclusion)

## Introduction
The `run.bat` script simplifies the process of setting up and running Python projects on Windows systems. It automates virtual environment creation, dependency installation, and project execution.

## Prerequisites
- Windows operating system
- Python 3.x installed and added to the system PATH
- Git (optional, for version control and project cloning)

## Quick Start Guide
1. **Ensure Python is installed**
   Open Command Prompt and run: `python --version`
   If not recognized, install Python 3.x from the official website.

2. **Obtain the project files**
   - Option 1: Download and extract the project ZIP file.
   - Option 2: Clone the repository: `git clone <repository_url>`

3. **Run the script**
   Navigate to the project directory and run:
   ```
   run.bat
   ```

4. **Interact with the application**
   Follow on-screen instructions or use the application's interface.

5. **Close the application**
   Close as instructed. Press any key to exit the script.

## Detailed Guide for Developers

### Script Overview
The `run.bat` script performs these key actions:
- Checks for Python installation
- Creates and activates a virtual environment
- Upgrades pip
- Installs dependencies from `requirements.txt`
- Runs the main Python script
- Handles errors and provides feedback

### Configuration Variables
Customize these variables at the beginning of the script:
```batch
set "VENV_DIR=venv"
set "REQUIREMENTS_FILE=requirements.txt"
set "MAIN_SCRIPT=variational_inference_calculator.py"
set "PYTHON_CMD=python"
set "ADDITIONAL_ARGS="
```

## Customizing the Script
- Change the main script: `set "MAIN_SCRIPT=my_new_script.py"`
- Modify virtual environment directory: `set "VENV_DIR=.venv"`
- Adjust requirements file: `set "REQUIREMENTS_FILE=requirements_dev.txt"`
- Pass arguments to the main script: `set "ADDITIONAL_ARGS=--debug --config=config.yaml"`
- Change Python command: `set "PYTHON_CMD=python3"`

## Troubleshooting
- **Python Not Found**: Ensure Python is installed and in PATH.
- **Virtual Environment Activation Fails**: Verify the environment directory exists.
- **Dependency Installation Errors**: Check internet connection and `requirements.txt`.
- **Main Script Not Found**: Confirm the script name and location.
- **Application Errors**: Check error messages and run the script directly for detailed output.
- **Permission Issues**: Run Command Prompt as administrator.

## Additional Notes
- The virtual environment is created in the project directory by default.
- Ensure Python version compatibility with project dependencies.
- To reset, delete the `venv` directory and rerun `run.bat`.
- This script is for Windows. Consider `run.sh` for Unix-based systems.

## Conclusion
The `run.bat` script streamlines Python project setup and execution on Windows. It reduces setup time and potential errors by automating environment creation and dependency management.

For further assistance, contact the project maintainers or consult the project documentation.
