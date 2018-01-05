#!/bin/sh
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -shared -fPIC -I/opt/anaconda3/include HelloWorld.cpp -o libHelloWorld.so
# Good to link.
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -L/opt/anaconda3/lib -lprotobuf -L. -lHelloWorld  Main.cpp -o Main
LD_LIBRARY_PATH=. ./Main

g++ -shared -fPIC -I/opt/anaconda3/include HelloWorld.cpp -o libHelloWorld.so
# Faild to link.
g++ -L/opt/anaconda3/lib -lprotobuf -L. -lHelloWorld  Main.cpp -o Main
