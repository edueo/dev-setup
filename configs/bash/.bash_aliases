alias copy="xclip -sel clip"
alias myip='curl "https://api.ipify.org?format=text" | xclip -sel clip'

# podman
alias docker=podman
alias docker-compose="podman compose"

alias docker-php='docker run -it --rm --net=host -p 8000:8000 -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:8.4-cli php'

