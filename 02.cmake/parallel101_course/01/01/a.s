
a.out:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x193>
  400248:	78 38                	js     400282 <_init-0x186>
  40024a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  400250:	6f                   	outsl  %ds:(%rsi),(%dx)
  400251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    $0x0,%al
  400256:	00 00                	add    %al,(%rax)
  400258:	10 00                	adc    %al,(%rax)
  40025a:	00 00                	add    %al,(%rax)
  40025c:	01 00                	add    %eax,(%rax)
  40025e:	00 00                	add    %al,(%rax)
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push %rbp
  400263:	00 00                	add    %al,(%rax)
  400265:	00 00                	add    %al,(%rax)
  400267:	00 02                	add    %al,(%rdx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 06                	add    %al,(%rsi)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 20                	add    %ah,(%rax)
  400271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    $0x0,%al
  400276:	00 00                	add    %al,(%rax)
  400278:	14 00                	adc    $0x0,%al
  40027a:	00 00                	add    %al,(%rax)
  40027c:	03 00                	add    (%rax),%eax
  40027e:	00 00                	add    %al,(%rax)
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push %rbp
  400283:	00 7e 75             	add    %bh,0x75(%rsi)
  400286:	57                   	push   %rdi
  400287:	e3 0e                	jrcxz  400297 <_init-0x171>
  400289:	68 83 61 6e f0       	pushq  $0xfffffffff06e6183
  40028e:	e0 f4                	loopne 400284 <_init-0x184>
  400290:	9c                   	pushfq 
  400291:	78 22                	js     4002b5 <_init-0x153>
  400293:	41 00 51 ec          	add    %dl,-0x14(%r9)
  400297:	98                   	cwtl   

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	01 00                	add    %eax,(%rax)
  40029a:	00 00                	add    %al,(%rax)
  40029c:	01 00                	add    %eax,(%rax)
  40029e:	00 00                	add    %al,(%rax)
  4002a0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000004002b8 <.dynsym>:
	...
  4002d0:	10 00                	adc    %al,(%rax)
  4002d2:	00 00                	add    %al,(%rax)
  4002d4:	20 00                	and    %al,(%rax)
	...
  4002e6:	00 00                	add    %al,(%rax)
  4002e8:	41 00 00             	add    %al,(%r8)
  4002eb:	00 12                	add    %dl,(%rdx)
	...
  4002fd:	00 00                	add    %al,(%rax)
  4002ff:	00 46 00             	add    %al,0x0(%rsi)
  400302:	00 00                	add    %al,(%rax)
  400304:	12 00                	adc    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000400318 <.dynstr>:
  400318:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40031c:	73 74                	jae    400392 <_init-0x76>
  40031e:	64 63 2b             	movslq %fs:(%rbx),%ebp
  400321:	2b 2e                	sub    (%rsi),%ebp
  400323:	73 6f                	jae    400394 <_init-0x74>
  400325:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  40032a:	67 6d                	insl   (%dx),%es:(%edi)
  40032c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40032d:	6e                   	outsb  %ds:(%rsi),(%dx)
  40032e:	5f                   	pop    %rdi
  40032f:	73 74                	jae    4003a5 <_init-0x63>
  400331:	61                   	(bad)  
  400332:	72 74                	jb     4003a8 <_init-0x60>
  400334:	5f                   	pop    %rdi
  400335:	5f                   	pop    %rdi
  400336:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40033a:	6d                   	insl   (%dx),%es:(%rdi)
  40033b:	2e 73 6f             	jae,pn 4003ad <_init-0x5b>
  40033e:	2e 36 00 6c 69 62    	cs add %ch,%ss:0x62(%rcx,%rbp,2)
  400344:	67 63 63 5f          	movslq 0x5f(%ebx),%esp
  400348:	73 2e                	jae    400378 <_init-0x90>
  40034a:	73 6f                	jae    4003bb <_init-0x4d>
  40034c:	2e 31 00             	xor    %eax,%cs:(%rax)
  40034f:	6c                   	insb   (%dx),%es:(%rdi)
  400350:	69 62 63 2e 73 6f 2e 	imul   $0x2e6f732e,0x63(%rdx),%esp
  400357:	36 00 70 75          	add    %dh,%ss:0x75(%rax)
  40035b:	74 73                	je     4003d0 <_init-0x38>
  40035d:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400360:	6c                   	insb   (%dx),%es:(%rdi)
  400361:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400368:	72 74                	jb     4003de <_init-0x2a>
  40036a:	5f                   	pop    %rdi
  40036b:	6d                   	insl   (%dx),%es:(%rdi)
  40036c:	61                   	(bad)  
  40036d:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
  400374:	43 5f                	rex.XB pop %r15
  400376:	32 2e                	xor    (%rsi),%ch
  400378:	32 2e                	xor    (%rsi),%ch
  40037a:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

000000000040037c <.gnu.version>:
  40037c:	00 00                	add    %al,(%rax)
  40037e:	00 00                	add    %al,(%rax)
  400380:	02 00                	add    (%rax),%al
  400382:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000400388 <.gnu.version_r>:
  400388:	01 00                	add    %eax,(%rax)
  40038a:	01 00                	add    %eax,(%rax)
  40038c:	37                   	(bad)  
  40038d:	00 00                	add    %al,(%rax)
  40038f:	00 10                	add    %dl,(%rax)
  400391:	00 00                	add    %al,(%rax)
  400393:	00 00                	add    %al,(%rax)
  400395:	00 00                	add    %al,(%rax)
  400397:	00 75 1a             	add    %dh,0x1a(%rbp)
  40039a:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  4003a0:	58                   	pop    %rax
  4003a1:	00 00                	add    %al,(%rax)
  4003a3:	00 00                	add    %al,(%rax)
  4003a5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000004003a8 <.rela.dyn>:
  4003a8:	f8                   	clc    
  4003a9:	0f 60 00             	punpcklbw (%rax),%mm0
  4003ac:	00 00                	add    %al,(%rax)
  4003ae:	00 00                	add    %al,(%rax)
  4003b0:	06                   	(bad)  
  4003b1:	00 00                	add    %al,(%rax)
  4003b3:	00 01                	add    %al,(%rcx)
	...

Disassembly of section .rela.plt:

00000000004003c0 <.rela.plt>:
  4003c0:	18 10                	sbb    %dl,(%rax)
  4003c2:	60                   	(bad)  
  4003c3:	00 00                	add    %al,(%rax)
  4003c5:	00 00                	add    %al,(%rax)
  4003c7:	00 07                	add    %al,(%rdi)
  4003c9:	00 00                	add    %al,(%rax)
  4003cb:	00 01                	add    %al,(%rcx)
	...
  4003d5:	00 00                	add    %al,(%rax)
  4003d7:	00 20                	add    %ah,(%rax)
  4003d9:	10 60 00             	adc    %ah,0x0(%rax)
  4003dc:	00 00                	add    %al,(%rax)
  4003de:	00 00                	add    %al,(%rax)
  4003e0:	07                   	(bad)  
  4003e1:	00 00                	add    %al,(%rax)
  4003e3:	00 02                	add    %al,(%rdx)
	...
  4003ed:	00 00                	add    %al,(%rax)
  4003ef:	00 28                	add    %ch,(%rax)
  4003f1:	10 60 00             	adc    %ah,0x0(%rax)
  4003f4:	00 00                	add    %al,(%rax)
  4003f6:	00 00                	add    %al,(%rax)
  4003f8:	07                   	(bad)  
  4003f9:	00 00                	add    %al,(%rax)
  4003fb:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .init:

0000000000400408 <_init>:
  400408:	48 83 ec 08          	sub    $0x8,%rsp
  40040c:	48 8b 05 e5 0b 20 00 	mov    0x200be5(%rip),%rax        # 600ff8 <__gmon_start__>
  400413:	48 85 c0             	test   %rax,%rax
  400416:	74 05                	je     40041d <_init+0x15>
  400418:	e8 23 00 00 00       	callq  400440 <__gmon_start__@plt>
  40041d:	48 83 c4 08          	add    $0x8,%rsp
  400421:	c3                   	retq   

Disassembly of section .plt:

0000000000400430 <.plt>:
  400430:	ff 35 d2 0b 20 00    	pushq  0x200bd2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400436:	ff 25 d4 0b 20 00    	jmpq   *0x200bd4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40043c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400440 <__gmon_start__@plt>:
  400440:	ff 25 d2 0b 20 00    	jmpq   *0x200bd2(%rip)        # 601018 <__gmon_start__>
  400446:	68 00 00 00 00       	pushq  $0x0
  40044b:	e9 e0 ff ff ff       	jmpq   400430 <.plt>

0000000000400450 <puts@plt>:
  400450:	ff 25 ca 0b 20 00    	jmpq   *0x200bca(%rip)        # 601020 <puts@GLIBC_2.2.5>
  400456:	68 01 00 00 00       	pushq  $0x1
  40045b:	e9 d0 ff ff ff       	jmpq   400430 <.plt>

0000000000400460 <__libc_start_main@plt>:
  400460:	ff 25 c2 0b 20 00    	jmpq   *0x200bc2(%rip)        # 601028 <__libc_start_main@GLIBC_2.2.5>
  400466:	68 02 00 00 00       	pushq  $0x2
  40046b:	e9 c0 ff ff ff       	jmpq   400430 <.plt>

Disassembly of section .text:

0000000000400470 <_start>:
  400470:	31 ed                	xor    %ebp,%ebp
  400472:	49 89 d1             	mov    %rdx,%r9
  400475:	5e                   	pop    %rsi
  400476:	48 89 e2             	mov    %rsp,%rdx
  400479:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40047d:	50                   	push   %rax
  40047e:	54                   	push   %rsp
  40047f:	49 c7 c0 f0 05 40 00 	mov    $0x4005f0,%r8
  400486:	48 c7 c1 80 05 40 00 	mov    $0x400580,%rcx
  40048d:	48 c7 c7 5d 05 40 00 	mov    $0x40055d,%rdi
  400494:	e8 c7 ff ff ff       	callq  400460 <__libc_start_main@plt>
  400499:	f4                   	hlt    
  40049a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004a0 <deregister_tm_clones>:
  4004a0:	b8 3f 10 60 00       	mov    $0x60103f,%eax
  4004a5:	55                   	push   %rbp
  4004a6:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  4004ac:	48 83 f8 0e          	cmp    $0xe,%rax
  4004b0:	48 89 e5             	mov    %rsp,%rbp
  4004b3:	77 02                	ja     4004b7 <deregister_tm_clones+0x17>
  4004b5:	5d                   	pop    %rbp
  4004b6:	c3                   	retq   
  4004b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4004bc:	48 85 c0             	test   %rax,%rax
  4004bf:	74 f4                	je     4004b5 <deregister_tm_clones+0x15>
  4004c1:	5d                   	pop    %rbp
  4004c2:	bf 38 10 60 00       	mov    $0x601038,%edi
  4004c7:	ff e0                	jmpq   *%rax
  4004c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004d0 <register_tm_clones>:
  4004d0:	b8 38 10 60 00       	mov    $0x601038,%eax
  4004d5:	55                   	push   %rbp
  4004d6:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  4004dc:	48 c1 f8 03          	sar    $0x3,%rax
  4004e0:	48 89 e5             	mov    %rsp,%rbp
  4004e3:	48 89 c2             	mov    %rax,%rdx
  4004e6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4004ea:	48 01 d0             	add    %rdx,%rax
  4004ed:	48 d1 f8             	sar    %rax
  4004f0:	75 02                	jne    4004f4 <register_tm_clones+0x24>
  4004f2:	5d                   	pop    %rbp
  4004f3:	c3                   	retq   
  4004f4:	ba 00 00 00 00       	mov    $0x0,%edx
  4004f9:	48 85 d2             	test   %rdx,%rdx
  4004fc:	74 f4                	je     4004f2 <register_tm_clones+0x22>
  4004fe:	5d                   	pop    %rbp
  4004ff:	48 89 c6             	mov    %rax,%rsi
  400502:	bf 38 10 60 00       	mov    $0x601038,%edi
  400507:	ff e2                	jmpq   *%rdx
  400509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400510 <__do_global_dtors_aux>:
  400510:	80 3d 1d 0b 20 00 00 	cmpb   $0x0,0x200b1d(%rip)        # 601034 <_edata>
  400517:	75 11                	jne    40052a <__do_global_dtors_aux+0x1a>
  400519:	55                   	push   %rbp
  40051a:	48 89 e5             	mov    %rsp,%rbp
  40051d:	e8 7e ff ff ff       	callq  4004a0 <deregister_tm_clones>
  400522:	5d                   	pop    %rbp
  400523:	c6 05 0a 0b 20 00 01 	movb   $0x1,0x200b0a(%rip)        # 601034 <_edata>
  40052a:	f3 c3                	repz retq 
  40052c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400530 <frame_dummy>:
  400530:	48 83 3d b8 08 20 00 	cmpq   $0x0,0x2008b8(%rip)        # 600df0 <__JCR_END__>
  400537:	00 
  400538:	74 1e                	je     400558 <frame_dummy+0x28>
  40053a:	b8 00 00 00 00       	mov    $0x0,%eax
  40053f:	48 85 c0             	test   %rax,%rax
  400542:	74 14                	je     400558 <frame_dummy+0x28>
  400544:	55                   	push   %rbp
  400545:	bf f0 0d 60 00       	mov    $0x600df0,%edi
  40054a:	48 89 e5             	mov    %rsp,%rbp
  40054d:	ff d0                	callq  *%rax
  40054f:	5d                   	pop    %rbp
  400550:	e9 7b ff ff ff       	jmpq   4004d0 <register_tm_clones>
  400555:	0f 1f 00             	nopl   (%rax)
  400558:	e9 73 ff ff ff       	jmpq   4004d0 <register_tm_clones>

000000000040055d <main>:
  40055d:	55                   	push   %rbp
  40055e:	48 89 e5             	mov    %rsp,%rbp
  400561:	bf 10 06 40 00       	mov    $0x400610,%edi
  400566:	e8 e5 fe ff ff       	callq  400450 <puts@plt>
  40056b:	b8 00 00 00 00       	mov    $0x0,%eax
  400570:	5d                   	pop    %rbp
  400571:	c3                   	retq   
  400572:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400579:	00 00 00 
  40057c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400580 <__libc_csu_init>:
  400580:	41 57                	push   %r15
  400582:	41 89 ff             	mov    %edi,%r15d
  400585:	41 56                	push   %r14
  400587:	49 89 f6             	mov    %rsi,%r14
  40058a:	41 55                	push   %r13
  40058c:	49 89 d5             	mov    %rdx,%r13
  40058f:	41 54                	push   %r12
  400591:	4c 8d 25 48 08 20 00 	lea    0x200848(%rip),%r12        # 600de0 <__frame_dummy_init_array_entry>
  400598:	55                   	push   %rbp
  400599:	48 8d 2d 48 08 20 00 	lea    0x200848(%rip),%rbp        # 600de8 <__init_array_end>
  4005a0:	53                   	push   %rbx
  4005a1:	4c 29 e5             	sub    %r12,%rbp
  4005a4:	31 db                	xor    %ebx,%ebx
  4005a6:	48 c1 fd 03          	sar    $0x3,%rbp
  4005aa:	48 83 ec 08          	sub    $0x8,%rsp
  4005ae:	e8 55 fe ff ff       	callq  400408 <_init>
  4005b3:	48 85 ed             	test   %rbp,%rbp
  4005b6:	74 1e                	je     4005d6 <__libc_csu_init+0x56>
  4005b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4005bf:	00 
  4005c0:	4c 89 ea             	mov    %r13,%rdx
  4005c3:	4c 89 f6             	mov    %r14,%rsi
  4005c6:	44 89 ff             	mov    %r15d,%edi
  4005c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4005cd:	48 83 c3 01          	add    $0x1,%rbx
  4005d1:	48 39 eb             	cmp    %rbp,%rbx
  4005d4:	75 ea                	jne    4005c0 <__libc_csu_init+0x40>
  4005d6:	48 83 c4 08          	add    $0x8,%rsp
  4005da:	5b                   	pop    %rbx
  4005db:	5d                   	pop    %rbp
  4005dc:	41 5c                	pop    %r12
  4005de:	41 5d                	pop    %r13
  4005e0:	41 5e                	pop    %r14
  4005e2:	41 5f                	pop    %r15
  4005e4:	c3                   	retq   
  4005e5:	90                   	nop
  4005e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005ed:	00 00 00 

00000000004005f0 <__libc_csu_fini>:
  4005f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004005f4 <_fini>:
  4005f4:	48 83 ec 08          	sub    $0x8,%rsp
  4005f8:	48 83 c4 08          	add    $0x8,%rsp
  4005fc:	c3                   	retq   

Disassembly of section .rodata:

0000000000400600 <_IO_stdin_used>:
  400600:	01 00                	add    %eax,(%rax)
  400602:	02 00                	add    (%rax),%al
  400604:	00 00                	add    %al,(%rax)
	...

0000000000400608 <__dso_handle>:
	...
  400610:	48                   	rex.W
  400611:	65 6c                	gs insb (%dx),%es:(%rdi)
  400613:	6c                   	insb   (%dx),%es:(%rdi)
  400614:	6f                   	outsl  %ds:(%rsi),(%dx)
  400615:	2c 20                	sub    $0x20,%al
  400617:	77 6f                	ja     400688 <__GNU_EH_FRAME_HDR+0x68>
  400619:	72 6c                	jb     400687 <__GNU_EH_FRAME_HDR+0x67>
  40061b:	64 21 00             	and    %eax,%fs:(%rax)

Disassembly of section .eh_frame_hdr:

0000000000400620 <__GNU_EH_FRAME_HDR>:
  400620:	01 1b                	add    %ebx,(%rbx)
  400622:	03 3b                	add    (%rbx),%edi
  400624:	34 00                	xor    $0x0,%al
  400626:	00 00                	add    %al,(%rax)
  400628:	05 00 00 00 10       	add    $0x10000000,%eax
  40062d:	fe                   	(bad)  
  40062e:	ff                   	(bad)  
  40062f:	ff 80 00 00 00 50    	incl   0x50000000(%rax)
  400635:	fe                   	(bad)  
  400636:	ff                   	(bad)  
  400637:	ff 50 00             	callq  *0x0(%rax)
  40063a:	00 00                	add    %al,(%rax)
  40063c:	3d ff ff ff a8       	cmp    $0xa8ffffff,%eax
  400641:	00 00                	add    %al,(%rax)
  400643:	00 60 ff             	add    %ah,-0x1(%rax)
  400646:	ff                   	(bad)  
  400647:	ff c8                	dec    %eax
  400649:	00 00                	add    %al,(%rax)
  40064b:	00 d0                	add    %dl,%al
  40064d:	ff                   	(bad)  
  40064e:	ff                   	(bad)  
  40064f:	ff 10                	callq  *(%rax)
  400651:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

0000000000400658 <__FRAME_END__-0xf0>:
  400658:	14 00                	adc    $0x0,%al
  40065a:	00 00                	add    %al,(%rax)
  40065c:	00 00                	add    %al,(%rax)
  40065e:	00 00                	add    %al,(%rax)
  400660:	01 7a 52             	add    %edi,0x52(%rdx)
  400663:	00 01                	add    %al,(%rcx)
  400665:	78 10                	js     400677 <__GNU_EH_FRAME_HDR+0x57>
  400667:	01 1b                	add    %ebx,(%rbx)
  400669:	0c 07                	or     $0x7,%al
  40066b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400671:	00 00                	add    %al,(%rax)
  400673:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400676:	00 00                	add    %al,(%rax)
  400678:	f8                   	clc    
  400679:	fd                   	std    
  40067a:	ff                   	(bad)  
  40067b:	ff 2a                	ljmp   *(%rdx)
	...
  400685:	00 00                	add    %al,(%rax)
  400687:	00 14 00             	add    %dl,(%rax,%rax,1)
  40068a:	00 00                	add    %al,(%rax)
  40068c:	00 00                	add    %al,(%rax)
  40068e:	00 00                	add    %al,(%rax)
  400690:	01 7a 52             	add    %edi,0x52(%rdx)
  400693:	00 01                	add    %al,(%rcx)
  400695:	78 10                	js     4006a7 <__GNU_EH_FRAME_HDR+0x87>
  400697:	01 1b                	add    %ebx,(%rbx)
  400699:	0c 07                	or     $0x7,%al
  40069b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  4006a1:	00 00                	add    %al,(%rax)
  4006a3:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4006a6:	00 00                	add    %al,(%rax)
  4006a8:	88 fd                	mov    %bh,%ch
  4006aa:	ff                   	(bad)  
  4006ab:	ff 40 00             	incl   0x0(%rax)
  4006ae:	00 00                	add    %al,(%rax)
  4006b0:	00 0e                	add    %cl,(%rsi)
  4006b2:	10 46 0e             	adc    %al,0xe(%rsi)
  4006b5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4006b8:	0b 77 08             	or     0x8(%rdi),%esi
  4006bb:	80 00 3f             	addb   $0x3f,(%rax)
  4006be:	1a 3b                	sbb    (%rbx),%bh
  4006c0:	2a 33                	sub    (%rbx),%dh
  4006c2:	24 22                	and    $0x22,%al
  4006c4:	00 00                	add    %al,(%rax)
  4006c6:	00 00                	add    %al,(%rax)
  4006c8:	1c 00                	sbb    $0x0,%al
  4006ca:	00 00                	add    %al,(%rax)
  4006cc:	44 00 00             	add    %r8b,(%rax)
  4006cf:	00 8d fe ff ff 15    	add    %cl,0x15fffffe(%rbp)
  4006d5:	00 00                	add    %al,(%rax)
  4006d7:	00 00                	add    %al,(%rax)
  4006d9:	41 0e                	rex.B (bad) 
  4006db:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4006e1:	50                   	push   %rax
  4006e2:	0c 07                	or     $0x7,%al
  4006e4:	08 00                	or     %al,(%rax)
  4006e6:	00 00                	add    %al,(%rax)
  4006e8:	44 00 00             	add    %r8b,(%rax)
  4006eb:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
  4006ef:	00 90 fe ff ff 65    	add    %dl,0x65fffffe(%rax)
  4006f5:	00 00                	add    %al,(%rax)
  4006f7:	00 00                	add    %al,(%rax)
  4006f9:	42 0e                	rex.X (bad) 
  4006fb:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
  400701:	8e 03                	mov    (%rbx),%es
  400703:	45 0e                	rex.RB (bad) 
  400705:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
  40070b:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701559 <__TMC_END__+0xffffffff86100521>
  400711:	06                   	(bad)  
  400712:	48 0e                	rex.W (bad) 
  400714:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  40071a:	6c                   	insb   (%dx),%es:(%rdi)
  40071b:	0e                   	(bad)  
  40071c:	38 41 0e             	cmp    %al,0xe(%rcx)
  40071f:	30 41 0e             	xor    %al,0xe(%rcx)
  400722:	28 42 0e             	sub    %al,0xe(%rdx)
  400725:	20 42 0e             	and    %al,0xe(%rdx)
  400728:	18 42 0e             	sbb    %al,0xe(%rdx)
  40072b:	10 42 0e             	adc    %al,0xe(%rdx)
  40072e:	08 00                	or     %al,(%rax)
  400730:	14 00                	adc    $0x0,%al
  400732:	00 00                	add    %al,(%rax)
  400734:	ac                   	lods   %ds:(%rsi),%al
  400735:	00 00                	add    %al,(%rax)
  400737:	00 b8 fe ff ff 02    	add    %bh,0x2fffffe(%rax)
	...

0000000000400748 <__FRAME_END__>:
  400748:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000600de0 <__frame_dummy_init_array_entry>:
  600de0:	30 05 40 00 00 00    	xor    %al,0x40(%rip)        # 600e26 <_DYNAMIC+0x2e>
	...

Disassembly of section .fini_array:

0000000000600de8 <__do_global_dtors_aux_fini_array_entry>:
  600de8:	10 05 40 00 00 00    	adc    %al,0x40(%rip)        # 600e2e <_DYNAMIC+0x36>
	...

Disassembly of section .jcr:

0000000000600df0 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000600df8 <_DYNAMIC>:
  600df8:	01 00                	add    %eax,(%rax)
  600dfa:	00 00                	add    %al,(%rax)
  600dfc:	00 00                	add    %al,(%rax)
  600dfe:	00 00                	add    %al,(%rax)
  600e00:	01 00                	add    %eax,(%rax)
  600e02:	00 00                	add    %al,(%rax)
  600e04:	00 00                	add    %al,(%rax)
  600e06:	00 00                	add    %al,(%rax)
  600e08:	01 00                	add    %eax,(%rax)
  600e0a:	00 00                	add    %al,(%rax)
  600e0c:	00 00                	add    %al,(%rax)
  600e0e:	00 00                	add    %al,(%rax)
  600e10:	1f                   	(bad)  
  600e11:	00 00                	add    %al,(%rax)
  600e13:	00 00                	add    %al,(%rax)
  600e15:	00 00                	add    %al,(%rax)
  600e17:	00 01                	add    %al,(%rcx)
  600e19:	00 00                	add    %al,(%rax)
  600e1b:	00 00                	add    %al,(%rax)
  600e1d:	00 00                	add    %al,(%rax)
  600e1f:	00 29                	add    %ch,(%rcx)
  600e21:	00 00                	add    %al,(%rax)
  600e23:	00 00                	add    %al,(%rax)
  600e25:	00 00                	add    %al,(%rax)
  600e27:	00 01                	add    %al,(%rcx)
  600e29:	00 00                	add    %al,(%rax)
  600e2b:	00 00                	add    %al,(%rax)
  600e2d:	00 00                	add    %al,(%rax)
  600e2f:	00 37                	add    %dh,(%rdi)
  600e31:	00 00                	add    %al,(%rax)
  600e33:	00 00                	add    %al,(%rax)
  600e35:	00 00                	add    %al,(%rax)
  600e37:	00 0c 00             	add    %cl,(%rax,%rax,1)
  600e3a:	00 00                	add    %al,(%rax)
  600e3c:	00 00                	add    %al,(%rax)
  600e3e:	00 00                	add    %al,(%rax)
  600e40:	08 04 40             	or     %al,(%rax,%rax,2)
  600e43:	00 00                	add    %al,(%rax)
  600e45:	00 00                	add    %al,(%rax)
  600e47:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600e4d <_DYNAMIC+0x55>
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 f4                	add    %dh,%ah
  600e51:	05 40 00 00 00       	add    $0x40,%eax
  600e56:	00 00                	add    %al,(%rax)
  600e58:	19 00                	sbb    %eax,(%rax)
  600e5a:	00 00                	add    %al,(%rax)
  600e5c:	00 00                	add    %al,(%rax)
  600e5e:	00 00                	add    %al,(%rax)
  600e60:	e0 0d                	loopne 600e6f <_DYNAMIC+0x77>
  600e62:	60                   	(bad)  
  600e63:	00 00                	add    %al,(%rax)
  600e65:	00 00                	add    %al,(%rax)
  600e67:	00 1b                	add    %bl,(%rbx)
  600e69:	00 00                	add    %al,(%rax)
  600e6b:	00 00                	add    %al,(%rax)
  600e6d:	00 00                	add    %al,(%rax)
  600e6f:	00 08                	add    %cl,(%rax)
  600e71:	00 00                	add    %al,(%rax)
  600e73:	00 00                	add    %al,(%rax)
  600e75:	00 00                	add    %al,(%rax)
  600e77:	00 1a                	add    %bl,(%rdx)
  600e79:	00 00                	add    %al,(%rax)
  600e7b:	00 00                	add    %al,(%rax)
  600e7d:	00 00                	add    %al,(%rax)
  600e7f:	00 e8                	add    %ch,%al
  600e81:	0d 60 00 00 00       	or     $0x60,%eax
  600e86:	00 00                	add    %al,(%rax)
  600e88:	1c 00                	sbb    $0x0,%al
  600e8a:	00 00                	add    %al,(%rax)
  600e8c:	00 00                	add    %al,(%rax)
  600e8e:	00 00                	add    %al,(%rax)
  600e90:	08 00                	or     %al,(%rax)
  600e92:	00 00                	add    %al,(%rax)
  600e94:	00 00                	add    %al,(%rax)
  600e96:	00 00                	add    %al,(%rax)
  600e98:	f5                   	cmc    
  600e99:	fe                   	(bad)  
  600e9a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600e9d:	00 00                	add    %al,(%rax)
  600e9f:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  600ea5:	00 00                	add    %al,(%rax)
  600ea7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600ead <_DYNAMIC+0xb5>
  600ead:	00 00                	add    %al,(%rax)
  600eaf:	00 18                	add    %bl,(%rax)
  600eb1:	03 40 00             	add    0x0(%rax),%eax
  600eb4:	00 00                	add    %al,(%rax)
  600eb6:	00 00                	add    %al,(%rax)
  600eb8:	06                   	(bad)  
  600eb9:	00 00                	add    %al,(%rax)
  600ebb:	00 00                	add    %al,(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 b8 02 40 00 00    	add    %bh,0x4002(%rax)
  600ec5:	00 00                	add    %al,(%rax)
  600ec7:	00 0a                	add    %cl,(%rdx)
  600ec9:	00 00                	add    %al,(%rax)
  600ecb:	00 00                	add    %al,(%rax)
  600ecd:	00 00                	add    %al,(%rax)
  600ecf:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
  600ed3:	00 00                	add    %al,(%rax)
  600ed5:	00 00                	add    %al,(%rax)
  600ed7:	00 0b                	add    %cl,(%rbx)
  600ed9:	00 00                	add    %al,(%rax)
  600edb:	00 00                	add    %al,(%rax)
  600edd:	00 00                	add    %al,(%rax)
  600edf:	00 18                	add    %bl,(%rax)
  600ee1:	00 00                	add    %al,(%rax)
  600ee3:	00 00                	add    %al,(%rax)
  600ee5:	00 00                	add    %al,(%rax)
  600ee7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 600eed <_DYNAMIC+0xf5>
	...
  600ef5:	00 00                	add    %al,(%rax)
  600ef7:	00 03                	add    %al,(%rbx)
	...
  600f01:	10 60 00             	adc    %ah,0x0(%rax)
  600f04:	00 00                	add    %al,(%rax)
  600f06:	00 00                	add    %al,(%rax)
  600f08:	02 00                	add    (%rax),%al
  600f0a:	00 00                	add    %al,(%rax)
  600f0c:	00 00                	add    %al,(%rax)
  600f0e:	00 00                	add    %al,(%rax)
  600f10:	48 00 00             	rex.W add %al,(%rax)
  600f13:	00 00                	add    %al,(%rax)
  600f15:	00 00                	add    %al,(%rax)
  600f17:	00 14 00             	add    %dl,(%rax,%rax,1)
  600f1a:	00 00                	add    %al,(%rax)
  600f1c:	00 00                	add    %al,(%rax)
  600f1e:	00 00                	add    %al,(%rax)
  600f20:	07                   	(bad)  
  600f21:	00 00                	add    %al,(%rax)
  600f23:	00 00                	add    %al,(%rax)
  600f25:	00 00                	add    %al,(%rax)
  600f27:	00 17                	add    %dl,(%rdi)
  600f29:	00 00                	add    %al,(%rax)
  600f2b:	00 00                	add    %al,(%rax)
  600f2d:	00 00                	add    %al,(%rax)
  600f2f:	00 c0                	add    %al,%al
  600f31:	03 40 00             	add    0x0(%rax),%eax
  600f34:	00 00                	add    %al,(%rax)
  600f36:	00 00                	add    %al,(%rax)
  600f38:	07                   	(bad)  
  600f39:	00 00                	add    %al,(%rax)
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 a8 03 40 00 00    	add    %ch,0x4003(%rax)
  600f45:	00 00                	add    %al,(%rax)
  600f47:	00 08                	add    %cl,(%rax)
  600f49:	00 00                	add    %al,(%rax)
  600f4b:	00 00                	add    %al,(%rax)
  600f4d:	00 00                	add    %al,(%rax)
  600f4f:	00 18                	add    %bl,(%rax)
  600f51:	00 00                	add    %al,(%rax)
  600f53:	00 00                	add    %al,(%rax)
  600f55:	00 00                	add    %al,(%rax)
  600f57:	00 09                	add    %cl,(%rcx)
  600f59:	00 00                	add    %al,(%rax)
  600f5b:	00 00                	add    %al,(%rax)
  600f5d:	00 00                	add    %al,(%rax)
  600f5f:	00 18                	add    %bl,(%rax)
  600f61:	00 00                	add    %al,(%rax)
  600f63:	00 00                	add    %al,(%rax)
  600f65:	00 00                	add    %al,(%rax)
  600f67:	00 fe                	add    %bh,%dh
  600f69:	ff                   	(bad)  
  600f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 88 03 40 00 00    	add    %cl,0x4003(%rax)
  600f75:	00 00                	add    %al,(%rax)
  600f77:	00 ff                	add    %bh,%bh
  600f79:	ff                   	(bad)  
  600f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f7d:	00 00                	add    %al,(%rax)
  600f7f:	00 01                	add    %al,(%rcx)
  600f81:	00 00                	add    %al,(%rax)
  600f83:	00 00                	add    %al,(%rax)
  600f85:	00 00                	add    %al,(%rax)
  600f87:	00 f0                	add    %dh,%al
  600f89:	ff                   	(bad)  
  600f8a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f8d:	00 00                	add    %al,(%rax)
  600f8f:	00 7c 03 40          	add    %bh,0x40(%rbx,%rax,1)
	...

Disassembly of section .got:

0000000000600ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	f8                   	clc    
  601001:	0d 60 00 00 00       	or     $0x60,%eax
	...
  601016:	00 00                	add    %al,(%rax)
  601018:	46 04 40             	rex.RX add $0x40,%al
  60101b:	00 00                	add    %al,(%rax)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 56 04             	add    %dl,0x4(%rsi)
  601022:	40 00 00             	add    %al,(%rax)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 66 04             	add    %ah,0x4(%rsi)
  60102a:	40 00 00             	add    %al,(%rax)
  60102d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000601030 <__data_start>:
  601030:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000601034 <__bss_start>:
  601034:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	34 2e                	xor    $0x2e,%al
   d:	38 2e                	cmp    %ch,(%rsi)
   f:	35 20 32 30 31       	xor    $0x31303220,%eax
  14:	35 30 36 32 33       	xor    $0x33323630,%eax
  19:	20 28                	and    %ch,(%rax)
  1b:	52                   	push   %rdx
  1c:	65 64 20 48 61       	gs and %cl,%fs:0x61(%rax)
  21:	74 20                	je     43 <_init-0x4003c5>
  23:	34 2e                	xor    $0x2e,%al
  25:	38 2e                	cmp    %ch,(%rsi)
  27:	35 2d 34 34 29       	xor    $0x2934342d,%eax
	...
