# vimi

This project is an attempt at creating a simple vimscript interpreter.
Vimi is able to take as input a vimscript and execute it, and hence
it makes vim more similar to any other full-fledged programming
language.

## Installation




## Executing a script

Like other programming languages, we can execute our vim script
by calling the vimscript interpreter like this:
 
```sh
vimi myscript.vim
```

As a demo example, let's create a simple script which we will
call example.vim with the following content:

```vim
"import vimi standard library
source stdutils.vim

"take user input
let ciao = Input("Type something: ")

"print to screen what user inserted
echo "You inserted: " . ciao


"print to screen arguments passed"
let passed_args = Argv()
echo(passed_args)
```

vimi will execute the script by executing:
```sh
vimi example.vim
```

## License

The vimi interpreter is under GPLv3 license. Please see LICENSE file for more
details.
