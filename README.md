# Darknet-build-cuda

## Setup Enironment

```bash
git clone https://github.com/yui0303/darknet-build -b cuda && cd darknet-build

# pull the docker image
docker pull pytorch/pytorch:1.9.0-cuda10.2-cudnn7-devel

# run the container
nvidia-docker run -it --name $ContainerName -v `pwd`:/workspace pytorch/pytorch:1.9.0-cuda10.2-cudnn7-devel /bin/bash

# build the darknet
make [-j4]

./run [train/valid/predict] [arguments]
```
