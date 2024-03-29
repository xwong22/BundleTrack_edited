#!/bin/bash

# 打开终端并执行命令
x-terminal-emulator -e bash -c "cd /home/agibot/Documents/cjh_hxy/catkin_ws && \
	source /home/agibot/miniconda3/etc/profile.d/conda.sh && \
	conda activate ros2 && \
	source /opt/ros/noetic/setup.sh && \
	source devel/setup.sh && \
	rosrun pose_tracking_pipeline image_publisher.py ; exec bash"





