# nanocron

A tiny docker image for running simple `cron` tasks.

### Usage

Clone, fork or download to modify both `script.sh` and `crontab.txt`. Be sure to keep the output redirection `> /proc/1/fd/1 2> /proc/1/fd/2` so the docker daemon recieves the proper logs.

```
docker build -t minicron .
docker run --init [-d] minicron
```

Always run with `--init` for proper process reaping and a graceful shutdown. See [tini](https://github.com/krallin/tini) and [Docker reference](https://docs.docker.com/engine/reference/commandline/run/) for more details
