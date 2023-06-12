# If docker binary exists then set docker host
if [ -x "$(command -v docker)" ]; then
    # Something to do here
    # create docker network if not exists
    if ! docker network ls | grep -q "developer"; then
        docker network create developer
    fi
fi
