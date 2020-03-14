## taskrc.md

[Idiomatic awk](https://backreference.org/2010/02/10/idiomatic-awk/)

```bash

function interleave_fun {
    #Help interleave (alternate) reading lines from two different files

    [[ -f $1 && -f $2 ]] || return


    awk -f - $1 $2

}

function prettier_proc {
    #Help print the /proc tree with record separator lines:
    ls -l /proc/*/* | awk '/\/proc/ {print "-----------\n" $0}
! /\/proc/ {print $0}'
}

function t1 {
    #Help
    ls -l /bin | awk -f ex1.awk
}
```
