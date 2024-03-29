#!/bin/bash

# Source ROS setup.bash
source /opt/ros/noetic/setup.bash

python /home/agibot/Documents/cjh_hxy/BundleTrack/transductive-vos.pytorch/run_video.py \
--img_dir /home/agibot/Documents/cjh_hxy/BundleTrack/YCBInEOAT/ours/rgb \
--init_mask_file /home/agibot/Documents/cjh_hxy/BundleTrack/YCBInEOAT/ours/init_mask.png \
--mask_save_dir /home/agibot/Documents/cjh_hxy/BundleTrack/YCBInEOAT/ours/masks \
--buffer_size 50

# sudo docker exec 35fbd780a033 /bin/bash -c "source /opt/ros/noetic/setup.bash && python /home/wty/project/BundleTrack/transductive-vos.pytorch/run_video.py --img_dir /home/wty/project/BundleTrack/YCBInEOAT/ours/rgb --init_mask_file /home/wty/project/BundleTrack/YCBInEOAT/ours/init_mask.png --mask_save_dir /home/wty/project/BundleTrack/YCBInEOAT/ours/masks --buffer_size 50"