#1.dynamic libs

```
otool -L a.out
➜  01 git:(master) otool -L a.out
a.out:
	/usr/lib/libc++.1.dylib (compatibility version 1.0.0, current version 1300.23.0)
	/usr/lib/libSystem.B.dylib (compatibility version 1.0.0, current version 1311.100.3)
```

#2.help

```
➜  01 git:(master) otool
Usage: /Library/Developer/CommandLineTools/usr/bin/otool [-arch arch_type] [-fahlLDtdorSTMRIHGvVcXmqQjCP] [-mcpu=arg] [--version] <object file> ...
	-f print the fat headers
	-a print the archive header
	-h print the mach header
	-l print the load commands
	-L print shared libraries used
	-D print shared library id name
	-t print the text section (disassemble with -v)
	-x print all text sections (disassemble with -v)
	-p <routine name>  start dissassemble from routine name
	-s <segname> <sectname> print contents of section
	-d print the data section
	-o print the Objective-C segment
	-r print the relocation entries
	-S print the table of contents of a library (obsolete)
	-T print the table of contents of a dynamic shared library (obsolete)
	-M print the module table of a dynamic shared library (obsolete)
	-R print the reference table of a dynamic shared library (obsolete)
	-I print the indirect symbol table
	-H print the two-level hints table (obsolete)
	-G print the data in code table
	-v print verbosely (symbolically) when possible
	-V print disassembled operands symbolically
	-c print argument strings of a core file
	-X print no leading addresses or headers
	-m don't use archive(member) syntax
	-B force Thumb disassembly (ARM objects only)
	-q use llvm's disassembler (the default)
	-Q use otool(1)'s disassembler
	-mcpu=arg use `arg' as the cpu for disassembly
	-j print opcode bytes
	-P print the info plist section as strings
	-C print linker optimization hints
	--version print the version of /Library/Developer/CommandLineTools/usr/bin/otool
	
```