#一、objdump -h
##1.1 demo.cpp

```cpp
#include <iostream>
using namespace std;
 
int main()
{
	int count = 0;
	printf("result: %d\n", count);
	return 0;
}
```
编译

gcc -c demo.cpp [-lstdc++]

生成一个demo.o文件，即obj文件

##1.2 反编译 on Mac
先用objdump可以查看

**objdump -h demo.o**
 
> ➜  objdump_h git:(master) ✗ objdump -h demo.o
> 
> demo.o：     文件格式 mach-o-x86-64
> 
> 节：
> Idx Name          Size      VMA               LMA               File off  Algn
>   0 .text         00000034  0000000000000000  0000000000000000  00000220  2** 4
>                   CONTENTS, ALLOC, LOAD, RELOC, CODE
>   1 .cstring      0000000c  0000000000000034  0000000000000034  00000254  2** 0
>                   CONTENTS, ALLOC, LOAD, READONLY, DATA
>   2 __LD.__compact_unwind 00000020  0000000000000040  0000000000000040  00000260  2** 3
>                   CONTENTS, RELOC, DEBUGGING
>   3 .eh_frame     00000040  0000000000000060  0000000000000060  00000280  2**3
>                   CONTENTS, ALLOC, LOAD, READONLY, DATA   
> 

##1.3 on Linux
> [chenhui3@cq01-sys-replace001.cq01.baidu.com objdump_h]$ objdump -h demo.o
> 
> demo.o:     file format elf64-x86-64
> 
> Sections:
> Idx Name          Size      VMA               LMA               File off  Algn
>   0 .text         0000007d  0000000000000000  0000000000000000  00000040  2** 0
>                   CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
>   1 .data         00000000  0000000000000000  0000000000000000  000000bd  2** 0
>                   CONTENTS, ALLOC, LOAD, DATA
>   2 .bss          00000001  0000000000000000  0000000000000000  000000bd  2** 0
>                   ALLOC
>   3 .rodata       0000000d  0000000000000000  0000000000000000  000000bd  2** 0
>                   CONTENTS, ALLOC, LOAD, READONLY, DATA
>   4 .ctors        00000008  0000000000000000  0000000000000000  000000d0  2** 3
>                   CONTENTS, ALLOC, LOAD, RELOC, DATA
>   5 .comment      00000012  0000000000000000  0000000000000000  000000d8  2** 0
>                   CONTENTS, READONLY
>   6 .note.GNU-stack 00000000  0000000000000000  0000000000000000  000000ea  2** 0
>                   CONTENTS, READONLY
>   7 .eh_frame     00000078  0000000000000000  0000000000000000  000000f0  2** 3
>                   CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
> 


#二、 objdump -D
##2.1 main.c

```c
#include <stdio.h>

void fun(int a)
{
}
 
int main()
{
    int a = 1234;
    fun(a);
}
```
##2.2 反汇编代码main.asm如下
objdump -D main.o >main.asm
反汇编代码main.asm如下

```
0000000000000000 <fun>:
   0:   55                      push   %rbp
   1:   48 89 e5                mov    %rsp,%rbp
   4:   89 7d fc                mov    %edi,-0x4(%rbp)
   7:   90                      nop
   8:   5d                      pop    %rbp
   9:   c3                      retq   

000000000000000a <main>:
   a:   55                      push   %rbp
   b:   48 89 e5                mov    %rsp,%rbp
   e:   48 83 ec 10             sub    $0x10,%rsp
  12:   c7 45 fc 03 00 00 00    movl   $0x3,-0x4(%rbp)
  19:   8b 45 fc                mov    -0x4(%rbp),%eax
  1c:   89 c7                   mov    %eax,%edi
  1e:   e8 00 00 00 00          callq  23 <main+0x19>
  23:   b8 00 00 00 00          mov    $0x0,%eax
  28:   c9                      leaveq 
  29:   c3                      retq  
```

#三、objdump -f
显示文件头信息
> [chenhui3@cq01-sys-replace001.cq01.baidu.com objdump_D]$ objdump -f main.o
> 
> main.o:     file format elf64-x86-64
> architecture: i386:x86-64, flags 0x00000011:
> HAS_RELOC, HAS_SYMS
> start address 0x0000000000000000

#四、objdump -s -j .comment 
显示制定section段信息(comment段)
[chenhui3@cq01-sys-replace001.cq01.baidu.com objdump_D]$ objdump -s -j .comment main.o

main.o:     file format elf64-x86-64

Contents of section .comment:
 0000 00474343 3a202847 4e552920 382e322e  .GCC: (GNU) 8.2.
 0010 3000                                 0.
 
 