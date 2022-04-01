files=`for f in "$@" ; 
do
    if [[ "$f" =~ ^- ]] ; then 
        echo "$f"
    else 
        echo "/root/home/$f" 
    fi
done`
docker run --platform linux/i386 --name blackbox --rm -it -v "$PWD":/root/home bb $files