function screencloud(){
    docker run -ti --rm -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix/:/tmp/.X11-unix \
    -v $HOME/.Xauthority:/root/.Xauthority \
    --net=host lazypower/screencloud screencloud
}


