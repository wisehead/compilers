#############################################################
#   File Name: bld_static_lib.sh
#     Autohor: Hui Chen (c) 2019
#        Mail: chenhui13@baidu.com
# Create Time: 2019/06/24-11:41:52
#############################################################
#!/bin/sh 
g++ -c hello.cc
ar cr libhello.a hello.o
g++ -o main main.cc -lhello -L.
