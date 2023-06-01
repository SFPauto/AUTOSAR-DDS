#!/usr/bin/env bash
MAZU_DEV_IMAGE=zhouchao0429/freesar:0.7
LOCAL_PATH=`pwd`
check_result=`docker image ls ${MAZU_DEV_IMAGE} | wc -l`
if [[ "$check_result" != "2" ]]; then
    info "Docker image ${MAZU_DEV_IMAGE} does not exist locally, pulling now"
    docker pull "${MAZU_DEV_IMAGE}"
else
    info "Docker image ${MAZU_DEV_IMAGE} exist locally"
fi
sudo docker run --net=bridge -itv "$LOCAL_PATH":/AUTOSAR-DDS ${MAZU_DEV_IMAGE} /bin/bash
