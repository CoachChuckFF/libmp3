#! /bin/bash

#use this file to figure out how to compile and use libmp3
#use mp3example.cpp to see how to use the functions

make
g++ -L/path/to/libmp3 -Wl,-rpath=/path/to/libmp3 -Wall -o example_executable mp3example.cpp -l:libmp3.so
chmod +x example_executable

#./example_executable 
#^The command above will run the example program
