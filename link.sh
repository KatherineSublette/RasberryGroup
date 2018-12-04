#!/bin/bash

gcc -S fac.c
as -o factorial.o factorial.s
as -o fac.o fac.s
gcc -o exec fac.o factorial.o
./exec
echo $?
