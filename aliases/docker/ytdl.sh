function ytdl() {
    if [ -z $1 ]; then
        echo "Usage: ytdl http://youtube.com/somevid"
        return
    fi

    docker run --rm -ti \
    --read-only=true \
    -v $HOME/Music/youtube-rip:/downloads \
    us.gcr.io/personal-1332/youtube-dl:latest -x --audio-format=mp3 $1
}


