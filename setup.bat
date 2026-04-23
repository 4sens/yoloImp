@echo off
setlocal

set VENV_DIR=yolo_env

echo === YOLO Training Setup ===

if not exist "%VENV_DIR%" (
    echo Creating virtual environment: %VENV_DIR%
    python -m venv %VENV_DIR%
) else (
    echo Virtual environment already exists: %VENV_DIR%
)

echo Activating and installing dependencies...
call %VENV_DIR%\Scripts\activate.bat
python -m pip install --upgrade pip
pip install -r requirements.txt

echo.
echo Setup complete! To start training:
echo   %VENV_DIR%\Scripts\activate
echo   python train.py

endlocal
