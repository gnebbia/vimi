vimi () 
{ 
    if [ -z "$1" ]; then
        echo "No valid vim script supplied";
    else
        export VIMI_ARGS="${@:2}";
        vim -i NONE -u NORC -U NONE -V1 -nNesS $1 -c'echo""|qall!';
        unset VIMI_ARGS;
    fi
}
