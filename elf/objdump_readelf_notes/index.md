---
title: 目标文件和ELF格式详解 - 简书
category: default
tags: 
  - www.jianshu.com
created_at: 2020-05-26 11:42:26
original_url: https://www.jianshu.com/p/132412ca73ce
---

# 目标文件和ELF格式详解

[![](assets/1590464546-7538fd20b1f3741de34cebf4fb8e4f2d.jpeg)](https://www.jianshu.com/u/7e5a46c8b70a)

[aron1992](https://www.jianshu.com/u/7e5a46c8b70a)关注

0.3362018.02.24 12:51:59字数 891阅读 8,823

## 目标文件和ELF格式详解

Linux生成的目标文件是标准的ELF文件格式，使用objdump工具和readelf工具可以查看分析elf文件的格式

gcc -c 选项只编译不连接生成目标文件

```shell
# c语言源代码
[root@localhost simple-secion-linux-elf]# cat SimpleSection.c
#include <stdio.h>

int global_init_var = 84;
int global_uninit_var;

void func1(int i) {
    printf("%d\n", i);
}

int main(int argc, char const *argv[])
{
    static int static_var = 82;
    static int static_var2;

    int a = 1;
    int b;

    func1(static_var + static_var2 + a + b);


    return 0;
}

[root@localhost simple-secion-linux-elf]# gcc -c SimpleSection.c 
[root@localhost simple-secion-linux-elf]# ll
总用量 40
-rwxr-xr-x. 1 root root  6740 2月  23 18:20 a.out
-rw-r--r--. 1 root root   286 2月  23 18:17 SimpleSection.c
-rw-r--r--. 1 root root 16968 2月  23 18:17 SimpleSection.i
-rw-r--r--. 1 root root  1904 2月  23 18:20 SimpleSection.o
-rwxr-xr-x. 1 root root  1343 2月  23 18:19 SimpleSection.s
[root@localhost simple-secion-linux-elf]# ./a.out 
```

### 初探目标文件

objdump工具可以查看ELF文件的段的信息，包含

*   查看目标文件各个段的信息(-h -x)
*   以十六进制的方式查看段的内容(-s)
*   查看反汇编之后的代码(-d)

#### ELF文件各个段的基本信息

objdump -h 选项查看ELF文件各个段的基本信息

```sh
[root@localhost simple-secion-linux-elf]# objdump -h SimpleSection.o

SimpleSection.o:     file format elf64-x86-64

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         0000005d  0000000000000000  0000000000000000  00000040  2**2
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000008  0000000000000000  0000000000000000  000000a0  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000004  0000000000000000  0000000000000000  000000a8  2**2
                  ALLOC
  3 .rodata       00000004  0000000000000000  0000000000000000  000000a8  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .comment      0000002d  0000000000000000  0000000000000000  000000ac  2**0
                  CONTENTS, READONLY
  5 .note.GNU-stack 00000000  0000000000000000  0000000000000000  000000d9  2**0
                  CONTENTS, READONLY
  6 .eh_frame     00000058  0000000000000000  0000000000000000  000000e0  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
```

size工具可以查看ELF文件的各个段的大小，.data段和.bss段和objdump工具查看的一致，而.text段不一致，这个地方暂时还不懂为什么？？

```css
[root@localhost simple-secion-linux-elf]# size SimpleSection.o
   text    data     bss     dec     hex filename
    185       8       4     197      c5 SimpleSection.o
```

#### 目标文件代码段

objdump -s 选项把ELF文件的所有信息以十六进制的方式打印出来；-d选项把代码段反汇编，可以看到代码段的地址从0-5c一共为5d个字节，和使用`objdump -h`查看的一致

```bash
[root@localhost simple-secion-linux-elf]# objdump -s -d SimpleSection.o

SimpleSection.o:     file format elf64-x86-64

Contents of section .text:
 0000 554889e5 4883ec10 897dfcb8 00000000  UH..H....}......
 0010 8b55fc89 d64889c7 b8000000 00e80000  .U...H..........
 0020 0000c9c3 554889e5 4883ec20 897dec48  ....UH..H.. .}.H
 0030 8975e0c7 45f80100 00008b15 00000000  .u..E...........
 0040 8b050000 00008d04 020345f8 0345fc89  ..........E..E..
 0050 c7e80000 0000b800 000000c9 c3        .............   
Contents of section .data:
 0000 54000000 52000000                    T...R...        
Contents of section .rodata:
 0000 25640a00                             %d..            
Contents of section .comment:
 0000 00474343 3a202847 4e552920 342e342e  .GCC: (GNU) 4.4.
 0010 37203230 31323033 31332028 52656420  7 20120313 (Red 
 0020 48617420 342e342e 372d3429 00        Hat 4.4.7-4).   
Contents of section .eh_frame:
 0000 14000000 00000000 017a5200 01781001  .........zR..x..
 0010 1b0c0708 90010000 1c000000 1c000000  ................
 0020 00000000 24000000 00410e10 8602430d  ....$....A....C.
 0030 065f0c07 08000000 1c000000 3c000000  ._..........<...
 0040 00000000 39000000 00410e10 8602430d  ....9....A....C.
 0050 06740c07 08000000                    .t......        

Disassembly of section .text:

0000000000000000 <func1>:
   0:   55                      push   %rbp
   1:   48 89 e5                mov    %rsp,%rbp
   4:   48 83 ec 10             sub    $0x10,%rsp
   8:   89 7d fc                mov    %edi,-0x4(%rbp)
   b:   b8 00 00 00 00          mov    $0x0,%eax
  10:   8b 55 fc                mov    -0x4(%rbp),%edx
  13:   89 d6                   mov    %edx,%esi
  15:   48 89 c7                mov    %rax,%rdi
  18:   b8 00 00 00 00          mov    $0x0,%eax
  1d:   e8 00 00 00 00          callq  22 <func1+0x22>
  22:   c9                      leaveq 
  23:   c3                      retq   

0000000000000024 <main>:
  24:   55                      push   %rbp
  25:   48 89 e5                mov    %rsp,%rbp
  28:   48 83 ec 20             sub    $0x20,%rsp
  2c:   89 7d ec                mov    %edi,-0x14(%rbp)
  2f:   48 89 75 e0             mov    %rsi,-0x20(%rbp)
  33:   c7 45 f8 01 00 00 00    movl   $0x1,-0x8(%rbp)
  3a:   8b 15 00 00 00 00       mov    0x0(%rip),%edx        # 40 <main+0x1c>
  40:   8b 05 00 00 00 00       mov    0x0(%rip),%eax        # 46 <main+0x22>
  46:   8d 04 02                lea    (%rdx,%rax,1),%eax
  49:   03 45 f8                add    -0x8(%rbp),%eax
  4c:   03 45 fc                add    -0x4(%rbp),%eax
  4f:   89 c7                   mov    %eax,%edi
  51:   e8 00 00 00 00          callq  56 <main+0x32>
  56:   b8 00 00 00 00          mov    $0x0,%eax
  5b:   c9                      leaveq 
  5c:   c3                      retq   
```

#### 目标文件数据段

数据段包含了读写数据段.data和只读数据段.rodata，objdump工具提供的-x选项可以查看段的内容

```shell
[root@localhost simple-secion-linux-elf]# objdump -s -x SimpleSection.o
...
Contents of section .data:
 0000 54000000 52000000                    T...R...        
Contents of section .rodata:
 0000 25640a00                             %d..            
...
```

*   .data段保存已初始化的全局变量和局部静态变量  
    54000000 对应的是`int global_init_var = 84;`  
    52000000 对应的是`static int static_var = 82;;`
    
*   .rodata段保存的是只读数据，一般是程序中的只读变量（const）和字符串常亮  
    `25640a00 %d..` 保存的是printf函数用到的字符串常量`%d\n`(25640a)
    

#### 目标文件BSS段

BSS段保存的是未初始化的全局变量和局部静态变量

```shell
[root@localhost simple-secion-linux-elf]# objdump -h SimpleSection.o
...
  2 .bss          00000004  0000000000000000  0000000000000000  000000a8  2**2
                  ALLOC
...
```

### ELF文件结构解析

![](assets/1590464546-f34bb61e1e8a8a511c93ef0ecfeb91b9.png)

ELF文件结构

  
主要包含：

*   ELF文件头（ELF Header）包含了ELF文件版本，目标机器型号、程序入口地址
*   ELF文件各个段（代码段，数据段、BSS段）
*   段表（Section Header Table），ELF文件中所有段的信息，比如段名、段长度、段在文件中的偏移、段的读写权限和其他属性
*   其他的辅助结构，比如字符串表、符号表等

readelf工具提供的以下选项可以查看elf文件的信息：

```shell
Usage: readelf <option(s)> elf-file(s)
 Display information about the contents of ELF format files
 Options are:
  -a --all               Equivalent to: -h -l -S -s -r -d -V -A -I
  -h --file-header       Display the ELF file header
  -l --program-headers   Display the program headers
     --segments          An alias for --program-headers
  -S --section-headers   Display the sections' header
     --sections          An alias for --section-headers
  -g --section-groups    Display the section groups
  -t --section-details   Display the section details
  -e --headers           Equivalent to: -h -l -S
  -s --syms              Display the symbol table
      --symbols          An alias for --syms
  -n --notes             Display the core notes (if present)
  -r --relocs            Display the relocations (if present)
  -u --unwind            Display the unwind info (if present)
  -d --dynamic           Display the dynamic section (if present)
  -V --version-info      Display the version sections (if present)
  -A --arch-specific     Display architecture specific information (if any).
  -c --archive-index     Display the symbol/file index in an archive
  -D --use-dynamic       Use the dynamic section info when displaying symbols
  -x --hex-dump=<number|name>
                         Dump the contents of section <number|name> as bytes
  -p --string-dump=<number|name>
                         Dump the contents of section <number|name> as strings
  -R --relocated-dump=<number|name>
                         Dump the contents of section <number|name> as relocated bytes
  -w[lLiaprmfFsoR] or
  --debug-dump[=rawline,=decodedline,=info,=abbrev,=pubnames,=aranges,=macro,=frames,=str,=loc,=Ranges]
                         Display the contents of DWARF2 debug sections
  -I --histogram         Display histogram of bucket list lengths
  -W --wide              Allow output width to exceed 80 characters
  @<file>                Read options from <file>
  -H --help              Display this information
  -v --version           Display the version number of readelf
```

#### ELF 文件头

使用readelf工具的-h选项查看ELF文件头部信息

```shell
[root@localhost simple-secion-linux-elf]#  readelf -h SimpleSection.o
ELF Header:
  Magic（ELF魔数）:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00 
  Class（文件机器字节长度）:                             ELF64
  Data（数据存储方式）:                              2's complement, little endian
  Version（版本）:                           1 (current)
  OS/ABI（运行平台）:                            UNIX - System V
  ABI Version（ABI版本）:                       0
  Type（ELF重定位类型）:                              REL (Relocatable file)
  Machine（硬件平台）:                           Advanced Micro Devices X86-64
  Version（硬件平台版本）:                           0x1
  Entry point address（入口地址）:               0x0
  Start of program headers（程序头入口）:          0 (bytes into file)
  Start of section headers（段表入口）:          416 (bytes into file)
  Flags:                             0x0
  Size of this header（ELF头自身的大小）:               64 (bytes)
  Size of program headers（程序头长度）:           0 (bytes)
  Number of program headers:         0
  Size of section headers（段表的长度）:           64 (bytes)
  Number of section headers（段的数量）:         13
  Section header string table index（段表字符串表在段中的位置）: 10
```

ELF 文件头结构对应的结构体，位于/usr/include/elf.h里，包含了32位和64位的版本，下面是64位版本的头信息结构体

```c
/* The ELF file header.  This appears at the start of every ELF file.  */

#define EI_NIDENT (16)

typedef struct
{
  unsigned char e_ident[EI_NIDENT]; /* Magic number and other info */
  Elf64_Half    e_type;         /* Object file type */
  Elf64_Half    e_machine;      /* Architecture */
  Elf64_Word    e_version;      /* Object file version */
  Elf64_Addr    e_entry;        /* Entry point virtual address */
  Elf64_Off e_phoff;        /* Program header table file offset */
  Elf64_Off e_shoff;        /* Section header table file offset */
  Elf64_Word    e_flags;        /* Processor-specific flags */
  Elf64_Half    e_ehsize;       /* ELF header size in bytes */
  Elf64_Half    e_phentsize;        /* Program header table entry size */
  Elf64_Half    e_phnum;        /* Program header table entry count */
  Elf64_Half    e_shentsize;        /* Section header table entry size */
  Elf64_Half    e_shnum;        /* Section header table entry count */
  Elf64_Half    e_shstrndx;     /* Section header string table index */
} Elf64_Ehdr;
```

类型描述以及长度信息如下所示：  

![](assets/1590464546-16ec0f36620f105aef7916c8c6ff6194.png)

类型描述以及长度信息

  
对应关系如下表所示：  

![](assets/1590464546-bc19d553431b41bc7379dcd232515541.png)

ELF文件头结构成员含义

**ELF魔数**  
标识ELF文件的平台属性，比如ELF字长、字节序、ELF文件版本，如下图所示。  

![](assets/1590464546-92904548ec676a0fb54c52922b46fa42.png)

ELF魔数

**ELF 文件类型**  

![](assets/1590464546-b7c08623580421c1be38840fb1ee9f27.png)

ELF 文件类型

**ELF机器类型**  

![](assets/1590464546-9ddf71c745ef45642a9590c1a26546ed.png)

ELF机器类型

#### ELF 段表

ELF文件中有很多段，段表（Section Header Table）就是保存这些段的基本信息的结构，包括了段名、段长度、段在文件中的偏移位置、读写权限和其他段属性。  
objdump工具可以查看ELF文件基本的段结构

```sh
[root@localhost simple-secion-linux-elf]# objdump -h SimpleSection.o

SimpleSection.o:     file format elf64-x86-64

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         0000005d  0000000000000000  0000000000000000  00000040  2**2
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000008  0000000000000000  0000000000000000  000000a0  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000004  0000000000000000  0000000000000000  000000a8  2**2
                  ALLOC
  3 .rodata       00000004  0000000000000000  0000000000000000  000000a8  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .comment      0000002d  0000000000000000  0000000000000000  000000ac  2**0
                  CONTENTS, READONLY
  5 .note.GNU-stack 00000000  0000000000000000  0000000000000000  000000d9  2**0
                  CONTENTS, READONLY
  6 .eh_frame     00000058  0000000000000000  0000000000000000  000000e0  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
```

使用readelf可以看到ELF文件全部的段结构

```sh
[root@localhost simple-secion-linux-elf]# readelf -S SimpleSection.o
There are 13 section headers, starting at offset 0x1a0:

Section Headers:
  [Nr] Name              Type             Address           Offset
       Size              EntSize          Flags  Link  Info  Align
  [ 0]                   NULL             0000000000000000  00000000
       0000000000000000  0000000000000000           0     0     0
  [ 1] .text             PROGBITS         0000000000000000  00000040
       000000000000005d  0000000000000000  AX       0     0     4
  [ 2] .rela.text        RELA             0000000000000000  000006c8
       0000000000000078  0000000000000018          11     1     8
  [ 3] .data             PROGBITS         0000000000000000  000000a0
       0000000000000008  0000000000000000  WA       0     0     4
  [ 4] .bss              NOBITS           0000000000000000  000000a8
       0000000000000004  0000000000000000  WA       0     0     4
  [ 5] .rodata           PROGBITS         0000000000000000  000000a8
       0000000000000004  0000000000000000   A       0     0     1
  [ 6] .comment          PROGBITS         0000000000000000  000000ac
       000000000000002d  0000000000000001  MS       0     0     1
  [ 7] .note.GNU-stack   PROGBITS         0000000000000000  000000d9
       0000000000000000  0000000000000000           0     0     1
  [ 8] .eh_frame         PROGBITS         0000000000000000  000000e0
       0000000000000058  0000000000000000   A       0     0     8
  [ 9] .rela.eh_frame    RELA             0000000000000000  00000740
       0000000000000030  0000000000000018          11     8     8
  [10] .shstrtab         STRTAB           0000000000000000  00000138
       0000000000000061  0000000000000000           0     0     1
  [11] .symtab           SYMTAB           0000000000000000  000004e0
       0000000000000180  0000000000000018          12    11     8
  [12] .strtab           STRTAB           0000000000000000  00000660
       0000000000000066  0000000000000000           0     0     1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings)
  I (info), L (link order), G (group), x (unknown)
  O (extra OS processing required) o (OS specific), p (processor specific)
```

可以看到一共有13个段，每个段对应一个Section Header数据结构，下面是64位的Section Header数据结构。  
Elf64\_Shdr的定义位于“/usr/include/elf.h”文件

```c
typedef struct
{
  Elf64_Word    sh_name;        /* Section name (string tbl index) */
  Elf64_Word    sh_type;        /* Section type */
  Elf64_Xword   sh_flags;       /* Section flags */
  Elf64_Addr    sh_addr;        /* Section virtual addr at execution */
  Elf64_Off sh_offset;      /* Section file offset */
  Elf64_Xword   sh_size;        /* Section size in bytes */
  Elf64_Word    sh_link;        /* Link to another section */
  Elf64_Word    sh_info;        /* Additional section information */
  Elf64_Xword   sh_addralign;       /* Section alignment */
  Elf64_Xword   sh_entsize;     /* Entry size if section holds table */
} Elf64_Shdr;
```

段表成员含义描述：  

![](assets/1590464546-086aa9425da3e955befc471311c75cd9.png)

段表成员含义描述

![](assets/1590464546-799f8d9cb42589cf2a3bf138fae52955.png)

Section Table及所有段的长度

**段类型（sh\_type）**  

![](assets/1590464546-e36e222dea409975f80180d874ed2ee7.png)

段类型（sh\_type）

  

![](assets/1590464546-7ea9d7a089d3f25b13cf9c630d3ae946.png)

段类型（sh\_type）

**段的标志位（sh\_flag）**  

![](assets/1590464546-2483ffebf9f2deb16e318d7d8da24b46.png)

段的标志位（sh\_flag）

\*\* 段的链接信息（sh\_link、sh\_info）\*\*  

![](assets/1590464546-ee5db43fe3ea259843d4d2fc76e438aa.png)

段的链接信息（sh\_link、sh\_info）

  
\`\`

4人点赞

[操作系统和编译原理](https://www.jianshu.com/nb/22521903)

"小礼物走一走，来简书关注我"

赞赏支持还没有人赞赏，支持一下

[![  ](assets/1590464546-f604d690b6489824bbe16c3249639080.jpeg)](https://www.jianshu.com/u/7e5a46c8b70a)

[aron1992](https://www.jianshu.com/u/7e5a46c8b70a "aron1992")https://gitee.com/dhar

总资产122 (约11.76元)共写了10.6W字获得184个赞共135个粉丝

关注

---------------------------------------------------


原网址: [访问](https://www.jianshu.com/p/132412ca73ce)

创建于: 2020-05-26 11:42:26

目录: default

标签: `www.jianshu.com`

