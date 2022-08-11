//
//  main.cpp
//  CPP
//
//  Created by wisehead on 2022/8/11.
//

#include <iostream>
#include <vector>

using namespace std;

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    vector<int> vec;
    for (int i = 0; i < 5; i++) {
        vec.push_back(i);
    }
    for (auto e : vec) {
        cout<<"e:"<<e<<endl;
    }
    return 0;
}
