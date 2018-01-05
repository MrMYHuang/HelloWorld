#!/bin/sh
g++ -shared -fPIC HelloWorld.cpp -o libHelloWorld.so
g++ -L. -lHelloWorld  Main.cpp -o Main
LD_LIBRARY_PATH=. ./Main

/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -shared -fPIC -I/opt/anaconda3/include HelloWorld.cpp -o libHelloWorld.so
g++ -L/opt/anaconda3/lib -Lprotobuf -L. -lHelloWorld  Main.cpp -o Main
