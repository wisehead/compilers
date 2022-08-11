#############################################################
#   File Name: build.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: alex.chenhui@gmail.com
# Create Time: 2022/08/11-13:51:59
#############################################################
#!/bin/sh 
rm -rf build
mkdir build
cd build
cmake ..
make 
