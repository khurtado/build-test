#! /bin/bash
# Build inside docker image

docker_hub="vc3project/dockerfiles"
run_docker="docker run -u $UID:$UID -v $(pwd):$PWD -w $PWD ${docker_hub}:el6"
$run_docker g++ hello-world.cpp -o hello.exe
