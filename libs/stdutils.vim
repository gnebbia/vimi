"vimi Standard Library
"this is a script containing basic functionality
"which helps making vimi a full fledged interpreter


com! -nargs=* Import call Import(<f-args>)

function! Import(lib)
    exec "source ~/.vimlibs/" . a:lib . ".vim"
endfunction

function! Input(msg)
    echo a:msg
    silent let name = input(a:msg)
    return name
endfunction

function! Argv()
    let cmdline_args = $VIMI_ARGS
    return split(cmdline_args)
endfunction
