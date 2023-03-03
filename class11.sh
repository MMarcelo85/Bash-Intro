#!/bin/bash

#Data Streams. stdo, stdi, stde
# exit code 1 is standard output (everything that is printed and not an error)
# exit code 2 is standard  error

# search files or dirs
# find /etc -type f

# anything cp to /dev/null is erased
# find /etc/ -type f 2> /dev/null
# echo "The exit code for this command is $?"

# find /etc -type f > /dev/null
# Everything that is not an error is sent to dev/null

# > is 1> , stdo

# Send stdo and stde to a file
# find /etc -type f &> file.txt

# > represents standard output aswell
find /etc -type f 1> find_res.txt 2> find_err.txt
