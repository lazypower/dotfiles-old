function weechat() {
    docker run --rm -ti \
    -v $HOME/.weechat:/home/weechat/.weechat \
    us.gcr.io/personal-1332/weechat:latest
}


