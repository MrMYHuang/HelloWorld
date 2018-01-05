#include <iostream>
#include "HelloWorld2.h"

using namespace std;

void helloWorld2(int a) {
	internal::GetEmptyStringAlreadyInited();
	cout << "Hello world." << endl;
}
