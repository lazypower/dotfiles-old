function mutt() {
    docker run --rm -ti \
    -e GMAIL="$GMAIL_USER" \
    -e GMAIL_NAME="$GMAIL_NAME" \
    -e GMAIL_FROM="$GMAIL_FROM" \
    -e GMAIL_PASS="$GMAIL_PASSWORD" \
    -v $HOME/.gnupg:/home/user/.gnupg \
    -v $HOME/Downloads:/home/user/Downloads \
    us.gcr.io/personal-1332/mutt:latest
}
