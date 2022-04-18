files=`for f in "$@" ; do echo "$f" done`
dir=`PWD##*/`
docker run --platform linux/i386 --name blackbox --rm -it -v "$PWD":"/$dir" -w  bb $files