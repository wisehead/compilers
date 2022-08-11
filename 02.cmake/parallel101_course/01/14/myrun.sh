#############################################################
#   File Name: myrun.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/08/11-22:30:31
#############################################################
#!/bin/sh 
sudo yum install fmt*
cd build
cmake3 ..
make
