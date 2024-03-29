#!/bin/bash

# 打开终端并执行命令
# seg
x-terminal-emulator -e bash -c "sudo docker exec -it bundletrack bash -c 'source /opt/ros/noetic/setup.bash && /opt/conda/envs/py38/bin/python /home/agibot/Documents/cjh_hxy/BundleTrack/transductive-vos.pytorch/run_video.py \
--img_dir /home/agibot/Documents/cjh_hxy/BundleTrack/YCBInEOAT/ours/rgb \
--init_mask_file /home/agibot/Documents/cjh_hxy/BundleTrack/YCBInEOAT/ours/init_mask.png \
--mask_save_dir /home/agibot/Documents/cjh_hxy/BundleTrack/YCBInEOAT/ours/masks \
--buffer_size 50; exec bash'"

#pos track
#!/bin/bash

# 打开终端并执行命令
x-terminal-emulator -e bash -c "sudo docker exec -it bundletrack bash -c 'source /opt/ros/noetic/setup.bash && /opt/conda/envs/py38/bin/python /home/agibot/Documents/cjh_hxy/BundleTrack/scripts/run_ycbineoat.py --data_dir /home/agibot/Documents/cjh_hxy/BundleTrack/YCBInEOAT/ours --port 5555; exec bash'"


