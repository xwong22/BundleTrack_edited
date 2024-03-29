LFNET_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../"
docker run --gpus all -itd --name lfnet --network=host  -m  16000m  -v $LFNET_DIR:$LFNET_DIR  --ipc=host -e DISPLAY=${DISPLAY} -e GIT_INDEX_FILE wenbowen123/lf-net-release-env:latest bash
