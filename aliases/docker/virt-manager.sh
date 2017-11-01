function virt-manager(){
    docker run --rm -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix/:/tmp/.X11-unix \
    -v $HOME/.Xauthority:/root/.Xauthority \
    -v $HOME/.config/dconf:/home/ubuntu/.config/dconf \
    -v $HOME/.ssh/id_rsa:/home/ubuntu/.ssh/id_rsa \
    -v $HOME/.ssh/known_hosts:/home/ubuntu/.ssh/known_hosts \
    --net=host lazypower/virt-manager
}


