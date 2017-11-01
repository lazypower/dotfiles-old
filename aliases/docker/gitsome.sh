function gitsome(){
    docker run -it --rm -v /etc/localtime:/etc/localtime:ro \
    --name gitsome \
    us.gcr.io/personal-1332/gitsome:latest
}


