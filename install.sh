#!/usr/bin/env  bash
#
# Author:  gnebbia
# License: GPLv3 
# This is the vimi installation script


set -eu -o pipefail


STDLIB_PATH="~/.vimlibs/stdutils.vim"

install_vimi() {
    cat <<EOF
vimi () 
{ 
    if [ -z "\$1" ]; then
        echo "No valid vim script supplied";
    else
        export VIMI_ARGS="\${@:2}";
        vim -i NONE -u $STDLIB_PATH -U NONE -V1 -nNesS \$1 -c'echo""|qall!';
        unset VIMI_ARGS;
    fi
}
EOF

}

create_lib_dir() {
    mkdir -p ~/.vimlibs/
    cp libs/stdutils.vim ~/.vimlibs/
}


main() {
    create_lib_dir
    install_vimi >> ~/.bashrc
    source ~/.bashrc
}


main "$@"
