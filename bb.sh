files=`for f in "$@" ; do echo "$f" ; done`
dir=${PWD##*/}
echo $files
docker run --platform linux/i386 --name blackbox --rm -it -v "$PWD":"/$dir" -w "/$dir" bb $files
