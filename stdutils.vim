"vimi Standard Library
"this is a script containing basic functionality
"which helps making vimi a full fledged interpreter


function! Input(msg)
    silent let name = input(a:msg)
    return name
endfunction

function! Argv()
    let cmdline_args = $VIMI_ARGS
    return split(cmdline_args)
endfunction
