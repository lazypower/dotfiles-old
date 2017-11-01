function tootstream() {
    docker run --rm -ti \
    -v $HOME/.config/tootstream:/home/tootstream/.config/tootstream \
    us.gcr.io/personal-1332/tootstream:latest
}


