#############################################################
#   File Name: cmd.sh
#     Autohor: Hui Chen (c) 2019
#        Mail: chenhui13@baidu.com
# Create Time: 2019/06/24-13:59:27
#############################################################
#!/bin/sh 
cmake -DCMAKE_INSTALL_PREFIX=/Users/chenhui13/github/compilers/static_dynamic_lib/dynamic_cmake/usr ..
make
make install
