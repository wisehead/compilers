#############################################################
#   File Name: build.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: alex.chenhui@gmail.com
# Create Time: 2022/08/11-14:35:49
#############################################################
#!/bin/sh 
g++ main.cpp src/Gun.cpp src/Solider.cpp -Iinclude -o xx
rm -rf build
mkdir build
cd build
cmake ..
make
