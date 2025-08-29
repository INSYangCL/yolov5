cd /ins_ycl/smalldetect/yolov5/

source /ins_ycl/smalldetect/yolov5/.venv/bin/activate --active



## run coco
# /ins_ycl/smalldetect/yolov5/.venv/bin/python /ins_ycl/smalldetect/yolov5/segment/train.py --weights yolov5n-seg.pt --imgsz 640 --batch-size 4 --cfg /ins_ycl/smalldetect/yolov5/models/segment/yolov5n-msseg.yaml --device 0 --mask-ratio 1  --workers 2 --epochs 500 --name exp_coco_msseg

## run isdota5
/ins_ycl/smalldetect/yolov5/.venv/bin/python /ins_ycl/smalldetect/yolov5/segment/train.py --weights yolov5n-seg.pt --imgsz 640 --batch-size 32 --cfg /ins_ycl/smalldetect/yolov5/models/segment/yolov5n-msseg-M1-2.yaml --hyp /ins_ycl/smalldetect/yolov5/data/hyps/hyp.scratch-low_no_aug.yaml --device 0 --patience 1000 --mask-ratio 2 --data /ins_ycl/smalldetect/ISDOTA_5/custom.yaml --workers 8 --epochs 500 --name  exp_nano_maskratio_2_640_e500_mssegM1M2_no_aug_patience_1000

## yolov5-seg
# /ins_ycl/smalldetect/yolov5/.venv/bin/python /ins_ycl/smalldetect/yolov5/segment/train.py --weights yolov5n-seg.pt --imgsz 640 --batch-size 32 --hyp /ins_ycl/smalldetect/yolov5/data/hyps/hyp.scratch-low_no_aug.yaml --device 0 --patience 1000 --data /ins_ycl/smalldetect/ISDOTA_5/custom.yaml --workers 8 --epochs 500 --name  exp_nano_seg_640_e500_no_aug_patience_1000
