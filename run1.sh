cd /ins_ycl/smalldetect/yolov5/

source /ins_ycl/smalldetect/yolov5/.venv/bin/activate --active



## run coco
# /ins_ycl/smalldetect/yolov5/.venv/bin/python /ins_ycl/smalldetect/yolov5/segment/train.py --weights yolov5s-seg.pt --imgsz 640 --batch-size 4 --cfg /ins_ycl/smalldetect/yolov5/models/segment/yolov5n-msseg.yaml --device 0 --mask-ratio 1  --workers 2 --epochs 500 --name exp_coco_msseg

## run isdota5
/ins_ycl/smalldetect/yolov5/.venv/bin/python /ins_ycl/smalldetect/yolov5/segment/train.py --weights yolov5s-seg.pt --imgsz 640 --batch-size 16 --cfg /ins_ycl/smalldetect/yolov5/models/segment/yolov5n-msseg-M1-2-3.yaml --device 1 --mask-ratio 1 --data /ins_ycl/smalldetect/ISDOTA_5_copy/custom.yaml --workers 4 --epochs 500 --name exp_maskratio_1_640_e500_mssegM1M2M3_

