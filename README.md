# YOLO Training — orb / crown / scepter detector

## Quick start (fresh clone)

### Windows
```bat
setup.bat
yolo_env\Scripts\activate
python train.py
```

### Linux / macOS
```bash
bash setup.sh
source yolo_env/bin/activate
python train.py
```

The setup scripts create a `yolo_env/` virtual environment and install all dependencies automatically.

---

## What the scripts do

| Script | Purpose |
|--------|---------|
| `setup.bat` / `setup.sh` | Create `yolo_env`, install `torch` + `ultralytics` |
| `train.py` | Train YOLO on the `dataset3/` dataset |
| `requirements.txt` | Pinned dependencies |

---

## Requirements

- **Python 3.10 – 3.12** (must be on `PATH`)
- **CUDA drivers** (optional — CPU training works but is slow)

No Anaconda required. A plain Python venv is used.

---

## GPU training

Change `device='cpu'` to `device=0` in `train.py` to use the first CUDA GPU.

---

## Notes

- On first run `yolov8n.pt` is downloaded automatically by Ultralytics if no local checkpoint is found.
- Training results are saved to `runs/detect/train/`.
- Dataset: 3 classes — `orb`, `crown`, `scepter` (2 629 train / 157 val images).
