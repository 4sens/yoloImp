#!/usr/bin/env bash
set -e

VENV_DIR="yolo_env"

echo "=== YOLO Training Setup ==="

if [ ! -d "$VENV_DIR" ]; then
    echo "Creating virtual environment: $VENV_DIR"
    python3 -m venv "$VENV_DIR"
else
    echo "Virtual environment already exists: $VENV_DIR"
fi

echo "Activating and installing dependencies..."
source "$VENV_DIR/bin/activate"
pip install --upgrade pip
pip install -r requirements.txt

echo ""
echo "Setup complete! To start training:"
echo "  source $VENV_DIR/bin/activate"
echo "  python train.py"
