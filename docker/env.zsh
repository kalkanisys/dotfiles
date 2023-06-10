# If docker host file exists then set docker host

DOCKER_HOST_FILE="/run/user/$(id -u)/docker.sock"
if [ -f DOCKER_HOST_FILE ]; then
    export DOCKER_HOST="unix://DOCKER_HOST_FILE"
fi
