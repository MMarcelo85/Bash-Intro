#!/bin/bash

# math
# Eval expression

expr 30 + 10

# Multiplicación \*. * es wildcard in bash
expr 30 \* 100

mynum1=1000
mynum2=10

expr  $mynum1 / $mynum2
