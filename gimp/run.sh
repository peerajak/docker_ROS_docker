# Command
# test with nvidia-smi
docker run --rm --runtime=nvidia --gpus all ubuntu nvidia-smi

docker build . -t gimp:0.1
xhost +
docker run --rm -it --name gimp -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro --gpus all gimp:0.1
