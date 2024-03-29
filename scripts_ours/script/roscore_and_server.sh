#!/bin/bash

# 打开终端并执行命令
x-terminal-emulator -e bash -c "roscore; exec bash"

#!/bin/bash
#sudo bash /home/agibot/Documents/cjh_hxy/BundleTrack/lf-net-release/docker/run_container.sh

# 进入 Docker 容器的 Bash 终端
x-terminal-emulator -e bash -c "sudo docker exec -it lfnet bash -c 'cd /home/agibot/Documents/cjh_hxy/BundleTrack/lf-net-release  && python run_server.py ; exec bash'"


