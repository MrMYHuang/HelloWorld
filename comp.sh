#!/bin/sh
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -shared -fPIC -I/opt/anaconda3/include HelloWorld.cpp -o libHelloWorld.so
# Good to link.
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -L/opt/anaconda3/lib -lprotobuf -L. -lHelloWorld  Main.cpp -o Main
LD_LIBRARY_PATH=. ./Main

g++ -shared -fPIC -I/opt/anaconda3/include HelloWorld.cpp -o libHelloWorld.so
# Fail to link.
g++ -L/opt/anaconda3/lib -lprotobuf -L. -lHelloWorld  Main.cpp -o Main

g++ -shared -fPIC -I/opt/anaconda3/include HelloWorld2.cpp -o libHelloWorld2.so
# Fail to link.
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -L/opt/anaconda3/lib -lprotobuf -L. -lHelloWorld2  Main2.cpp -o Main2


/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -shared -fPIC -I/opt/anaconda3/include HelloWorld2.cpp -o libHelloWorld2.so
# Fail to link.
g++ -L/opt/anaconda3/lib -lprotobuf -L. -lHelloWorld2  Main2.cpp -o Main2

