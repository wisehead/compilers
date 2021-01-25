#一、符号表段
.text：已编译程序的机器代码。
.rodata：只读数据，比如printf语句中的格式串和开关（switch）语句的跳转表。
.data：已初始化的全局C变量。局部C变量在运行时被保存在栈中，既不出现在.data中，也不出现在.bss节中。
.bss：未初始化的全局C变量。在目标文件中这个节不占据实际的空间，它仅仅是一个占位符。目标文件格式区分初始化和未初始化变量是为了空间效率在：在目标文件中，未初始化变量不需要占据任何实际的磁盘空间。
.symtab：一个符号表（symbol table），它存放在程序中被定义和引用的函数和全局变量的信息。一些程序员错误地认为必须通过-g选项来编译一个程序，得到符号表信息。实际上，每个可重定位目标文件在.symtab中都有一张符号表。然而，和编译器中的符号表不同，.symtab符号表不包含局部变量的表目。
.rel.text：当链接噐把这个目标文件和其他文件结合时，.text节中的许多位置都需要修改。一般而言，任何调用外部函数或者引用全局变量的指令都需要修改。另一方面调用本地函数的指令则不需要修改。注意，可执行目标文件中并不需要重定位信息，因此通常省略，除非使用者显式地指示链接器包含这些信息。
.rel.data：被模块定义或引用的任何全局变量的信息。一般而言，任何已初始化全局变量的初始值是全局变量或者外部定义函数的地址都需要被修改。
.debug：一个调试符号表，其有些表目是程序中定义的局部变量和类型定义，有些表目是程序中定义和引用的全局变量，有些是原始的C源文件。只有以-g选项调用编译驱动程序时，才会得到这张表。
.line：原始C源程序中的行号和.text节中机器指令之间的映射。只有以-g选项调用编译驱动程序时，才会得到这张表。
.strtab：一个字符串表，其内容包括.symtab和.debug节中的符号表，以及节头部中的节名字。字符串表就是以null结尾的字符串序列。

#二、命令用法例子
##2.1.反编译看段信息
objdump -h demo.o

##2.2.通过.o生成汇编文件.asm
objdump -D demo.o

##2.3 显示文件头信息 
objdump -f main.o

##2.4 显示制定section段信息(comment段)
objdump -s -j .comment main.o

##2.5 查看PLT表（没试）
objdump -d -j .plt level

##2.6 查看GOT表（没试）
objdump -R level2

#三、inux下objdump命令常见用法举例:
	objdump -x obj:以某种分类信息的形式把目标文件的数据组成输出；<可查到该文件的的所有动态库>
	
	objdump -t obj:输出目标文件的符号表（）
	
	objdump -h obj:输出目标文件的所有段概括（）
	
	objdump -j ./text/.data -S obj:输出指定段的信息（反汇编源代码）
	
	objdump -S obj:输出目标文件的符号表（） 当gcc -g时打印更明显
	
	objdump -j .text -Sl stack1 | more

* -S 尽可能反汇编出源代码，尤其当编译的时候指定了-g这种调试参数时，
	* 效果比较明显。隐含了-d参数。

* -l 用文件名和行号标注相应的目标代码，仅仅和-d、-D或者-r一起使用 
	* 使用-ld和使用-d的区别不是很大，在源码级调试的时候有用，要求编译时使用了-g之类的调试编译选项。

* -j name 仅仅显示指定section的信息
 
#四、如何使用linux下objdump命令对任意一个二进制文件进行反汇编？
可以使用如下命令：

	objdump -D -b binary -m i386 a.bin
	
-D表示对全部文件进行反汇编，-b表示二进制，-m表示指令集架构，a.bin就是我们要反汇编的二进制文件

objdump -m可以查看更多支持的指令集架构，如i386:x86-64，i8086等

另外上面的所有objdump命令的参数同样适用于arm-linux-objdump。

同时我们也可以指定big-endian或little-endian（-EB或-EL），我们可以指定从某一个位置开始反汇编等。

#五、可执行文件
objdump命令是Linux下的反汇编目标文件或者可执行文件的命令，它还有其他作用，下面以ELF格式可执行文件test为例详细介绍：
	objdump -f test 显示test的文件头信息
	
	objdump -d test 反汇编test中的需要执行指令的那些section
	
	objdump -D test 与-d类似，但反汇编test中的所有section
	
	objdump -h test 显示test的Section Header信息
	
	objdump -x test 显示test的全部Header信息
	
	objdump -s test 除了显示test的全部Header信息，还显示他们对应的十六进制文件代码
	
	输出到txt文件objdump -s test.so>test.txt

同时可以用命nm,strace,gdb.


