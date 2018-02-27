# Use docker instead of install on local machine Gem Compass

## This command can be added to ~/.bashrc or ~/.zshrc to use compass as it is installed on the machine

```
compass () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --user $(id -u):$(id -g) \
        --volume /etc/passwd:/etc/passwd:ro \
        --volume /etc/group:/etc/group:ro \
        --volume $(pwd):/app \
        -w /app \
        vslklv/docker-compass compass "$@"
}
```
