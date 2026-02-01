#!/bin/bash

##### Special Variables #####
echo "All args passed to the script : $@"
echo "number of variables passed this script :$#"
echo "script name :$0"
echo "present which directory you are in : $PWD"
echo "who is running this script : $USER"
echo "Home directory : $HOME"
echo "PID of the script : $$"
sleep 100
echo "backgroud process id : $!"
echo "All args passed to the script : $*"