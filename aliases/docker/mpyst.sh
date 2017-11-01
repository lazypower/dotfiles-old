function mpsyt() {
    docker run --rm -ti \
    --read-only=true \
    -v $XDG_RUNTIME_DIR/pulse:/run/user/1000/pulse:ro \
    -e PULSE_SERVER=unix:$XDG_RUNTIME_DIR/pulse/native \
    us.gcr.io/personal-1332/mpsyt:latest
}


