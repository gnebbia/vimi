"import libraries with
source stdutils.vim

let ciao = Input("message")

echo "you inserted " . ciao

"let varname = system('tr "\0" " " </proc/' . getpid() . '/cmdline 2>/dev/null')

"echo $VIMI_ARGS
let argss = Argv()

echo(argss)

