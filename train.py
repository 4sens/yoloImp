import os
from ultralytics import YOLO

model = YOLO("yolo26n.pt")

# Train the model
results = model.train(data="./dataset3/data.yaml", 
    epochs=500, 
    imgsz=1080,
    save_period=1,
    batch=16,      # Higher than 16 on CPU often yields diminishing returns
    device=0,       # Use GPU (CUDA); set to 'cpu' if no GPU available
    # --- AUGMENTATION SETTINGS ---
    degrees=90.0,    # Rotation +- 15 degrees (handles tilted cameras/postures)
    hsv_h=0.015,     # Color: Hue shift (handles different suit colors/fabrics)
    hsv_s=0.7,       # Color: Saturation (handles vibrant vs. dull lighting)
    hsv_v=0.4,       # Color: Value/Brightness (handles shadows/overexposure)

    scale=0.6,       # Zoom in/out (essential for distant people in the hall)
    translate=0.1,   # Shifting image (handles people partially cut off by frame)
    fliplr=0.5,      # Flip left-right (doubles data: handles left/right facing people)
    mosaic=1.0,      # Combines 4 images into 1 (best for small object detection)
    mixup=0,       # Blends two images (helps with overlapping crowds)
)
