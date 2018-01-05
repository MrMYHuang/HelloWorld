#include <iostream>
#include "/opt/anaconda3/include/google/protobuf/message_lite.h"
#include "HelloWorld.h"

using namespace std;

void helloWorld(int a) {
	google::protobuf::internal::GetEmptyStringAlreadyInited();
	cout << "Hello world." << endl;
}

