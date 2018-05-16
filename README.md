# docker-chkcron
Dockerfile for chkcrontab with recursive support over directories.

## Usage

To check all the files in a directory:

`docker run -it --rm -v $(pwd):/workdir kronostechnologies/chkcron ./path/to/directory`

To check only a single file:

`docker run -it --rm -v $(pwd):/workdir kronostechnologies/chkcron ./path/to/file`
