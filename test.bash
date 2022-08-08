#!/bin/bash -xv

ng () {
    echo NG at LINE $1
    res=1
}

res=0

out=$(seq 5 | ./plus)

### I/O TEST ###

[ "${out}" = 14 ] || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res