#!/bin/sh
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -shared -fPIC -I/opt/anaconda3/include HelloWorld.cpp -o libHelloWorld.so
# Good to link.
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -L/opt/anaconda3/lib -lprotobuf -L. -lHelloWorld  Main.cpp -o Main
LD_LIBRARY_PATH=. ./Main

g++ -shared -fPIC -I/opt/anaconda3/include HelloWorld.cpp -o libHelloWorld.so
# Fail to link.
g++ -L/opt/anaconda3/lib -lprotobuf -L. -lHelloWorld  Main.cpp -o Main

g++ -shared -fPIC HelloWorld2.cpp -o libHelloWorld2.so
# Fail to link.
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -L. -lHelloWorld2  Main2.cpp -o Main2



# Fail to link.
g++ -shared -fPIC HelloWorld2Imp.cpp -o libHelloWorld2Imp.so
nm -S libHelloWorld2Imp.so |grep fix
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -shared -fPIC HelloWorld2.cpp -o libHelloWorld2.so
nm -S libHelloWorld2.so |grep fix
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -L/opt/anaconda3/lib -L. -lHelloWorld2  Main2.cpp -o Main2


# Fail to link.
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -shared -fPIC HelloWorld2Imp.cpp -o libHelloWorld2Imp.so
nm -S libHelloWorld2Imp.so |grep fix
g++ -shared -fPIC HelloWorld2.cpp -o libHelloWorld2.so
nm -S libHelloWorld2.so |grep fix
g++ -L/opt/anaconda3/lib -L. -lHelloWorld2  Main2.cpp -o Main2

# Good to link
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -shared -fPIC HelloWorld2Imp.cpp -o libHelloWorld2Imp.so
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -shared -fPIC HelloWorld2.cpp -o libHelloWorld2.so
/opt/anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++ -L. -lHelloWorld2 -lHelloWorld2Imp  Main2.cpp -o Main2
LD_LIBRARY_PATH=. ./Main2

# Good to link
g++ -shared -fPIC HelloWorld2Imp.cpp -o libHelloWorld2Imp.so
g++ -shared -fPIC HelloWorld2.cpp -o libHelloWorld2.so
g++ -L. -lHelloWorld2 -lHelloWorld2Imp  Main2.cpp -o Main2
LD_LIBRARY_PATH=. ./Main2
