---
title: 编译原理之lex,yacc学习 - 程序员修练之路 - 博客园
category: default
tags: 
  - www.cnblogs.com
created_at: 2020-05-18 11:15:39
original_url: https://www.cnblogs.com/hdk1993/p/4922801.html
---


# 编译原理之lex,yacc学习 - 程序员修练之路 - 博客园

**写在前面的几句废话**

最近在项目的过程中接触了lex 和 yacc，他们可以帮助我们来实现自己的领域语言。最典型的应用就是可以帮助我们来实现自定义测试脚本的执行器。但是，这里也有一个限制，就是测试脚本要做的基本事情必须有现成的C语言库来实现，否则就做不到了；如果基本的操作是用java来做的，那么还可以用Antlr，这里不对Antlr做详细介绍。

**lex是什么？**

教科书上把lex的作用的作用叫做“词法分析 lexical analysis ”，这个中文叫法非常让人看不明白（叫做“符号提取”更合适），其实从它的英文单词lexical上来看他的意思其实是非常清楚的。

lexical，在webster上的解释是：of or relating to words or the vocabulary of a language as distinguished from its grammar and construction。

指的是： 一种语言中关于词汇、单词的，与之相对的是这种语言的语法和组织

这么来看的话 lexical analysis 的作用就应该是**语言中的词汇和单词分析**。事实上他的作用就是**从语言中提取单词**。放到编程语言中来说，他要做的事情其实就是**提取编程语言占用的各种保留字、操作符等等语言的元素**。

所以他的另外一个名字scanner其实更形象一些，就是扫描一个文本中的单词。

lex把每个扫面出来的单词叫统统叫做token，token可以有很多类。对比自然语言的话，英语中的每个单词都是token，token有很多类，比如non(名词)就是一个类token，apple就是属于这个类型的一个具体token。对于某个编程语言来说，token的个数是很有限的，不像英语这种自然语言中有几十万个单词。

lex工具会帮我们生成一个yylex函数，yacc通过调用这个函数来得知拿到的token是什么类型的，但是token的类型是在yacc中定义的。

lex的输入文件一般会被命名成 .l文件，通过lex XX.l 我们得到输出的文件是lex.yy.c

**yacc是什么呢？**

刚才说完lex了，那么yacc呢，教科书上把yacc做的工作叫做syntactic analysis。这次我们翻译没有直译做句法分析，而是叫语法分析，这个翻译能好一点，意思也基本上比较清楚。  
其实我们最开始学习英语的时候老师都会告诉我们英语其实就是“单词+语法”，这个观点放到编程语言中很合适，lex提取了单词，那么是剩下的部分就是如何表达语法。那么yacc做的事情就是这一部分（实际应该说是BNF来做的）。

yacc会帮我们生成一个yyparse函数，这个函数会不断调用上面的yylex函数来得到token的类型。

yacc的输入文件一般会被命名成 .y文件，通过yacc -d XX.y我们得到的输出文件是y.tab.h y.tab.c，前者包含了lex需要的token类型定义，需要被include进 .l文件中

**lex和yacc的输入文件格式**

Definition section  
%%  
Rules section

%%  
C code section

.l和.y的文件格式都是分成三段，用%%来分割，三个section的含义是：

*   Definition Section

> 这块可以放C语言的各种各种include，define等声明语句，但是要用%{ %}括起来。
> 
> 如果是.l文件，可以放预定义的正则表达式：minus "-" 还要放token的定义，方法是：代号 正则表达式。然后到了，Rules Section就可以通过{符号} 来引用正则表达式
> 
> 如果是.y文件，可以放token的定义，如：%token INTEGER PLUS ，这里的定一个的每个token都可以在y.tab.h中看到

*   Rules section

> .l文件在这里放置的rules就是每个正则表达式要对应的动作，一般是返回一个token
> 
> .y文件在这里放置的rules就是满足一个语法描述时要执行的动作
> 
> 不论是.l文件还是.y文件这里的动作都是用{}扩起来的，用C语言来描述，这些代码可以做你任何想要做的事情

*   C code Section

> main函数，yyerror函数等的定义

**lex和yacc能帮我们做什么？**

一句话：解释执行自定义语言。有几点要注意：

1.  自定义语言的要做的事情必须可以能通过C语言来实现。其实任何计算机能做的事情都可以用C语言来实现，lex和yacc存在的意义在于简化语言，让使用者能够以一种用比较简单的语言来实现复杂的操作。比如：对于数据库的查询肯定有现成的库可以来完成，但是使用起来比较麻烦，要自己写成语调用API，编译才行。如果我们想实自定义一个简单的语言（比如SQL）来实现操作，这个时候就可以用lex和yacc。
2.  lex和yacc 做的事情只是：用C语言来实现另外一种语言。所以，他没办法实现C语言自己，但是可以实现java、python等。当然你可以通过Antlr来实现C语言的解析和执行，如果你这么做的话，C语言程序首先是通过java来执行，然后java又变成了本地语言（C语言）来执行，谁叫我们的操作系统都是C语言实现的呢。

**使用lex和yacc我们要做那几件事情？**

1.  定义各种token类型。他们在.y中定义，这些token既会被lex使用到，也会被.y文件中的BNF使用到。
2.  写词汇分析代码。这部分代码在.l文件（就是lex的输入文件）中。这块的定义方式是：正则表达式-->对应操作。如果和yacc一起来使用的话，对应的操作通常是返回一个token类型，这个token的类型要在yacc中提前定义好。
3.  写BNF。这些东西定义了语言的规约方式。

**关于BNF**

是一种[context-free grammars](http://en.wikipedia.org/wiki/Context-free_grammar)，请参考：[http://en.wikipedia.org/wiki/Backus%E2%80%93Naur_Form](http://en.wikipedia.org/wiki/Backus%E2%80%93Naur_Form) 摘录：

<symbol> ::= \_\_expression\_\_

1.  <[symbol](http://en.wikipedia.org/wiki/Symbol)\> is a _[nonterminal](http://en.wikipedia.org/wiki/Nonterminal)_
2.  [\_\_expression\_\_](http://en.wikipedia.org/wiki/Expression_(mathematics)) consists of one or more sequences of symbols
3.  more sequences are separated by the [vertical bar](http://en.wikipedia.org/wiki/Vertical_bar), '|'
4.  Symbols that never appear on a left side are _[**terminals**](http://en.wikipedia.org/wiki/Terminal_symbol)_. On the other hand
5.  symbols that appear on a left side are _[**non-terminals**](http://en.wikipedia.org/wiki/Nonterminal_symbol)_ and are always enclosed between the pair <>.

在yacc中定义的方式其实是：

<symbol> : \_\_expression\_\_ {operation}

| \_\_expression\_\_ {operation}

operation 是 满足语法时要执行的C语言代码，这里的C语言代码可以使用一些变量，他们是：$$ $1 $2等等。$$代表规约的结果，就是表达式\_\_expression\_\_的值，$1代表的是前面 \_\_expression\_\_ 中出现的各个word。举个例子：

expr2:  
expr3 { $$ == $1; }  
| expr2 PLUS expr3 { $$ = plus($1, $3); }  
| expr2 MINUS expr3 { $$ = minus($1, $3); }  
;

来自：[http://memphis.compilertools.net/interpreter.html](http://memphis.compilertools.net/interpreter.html)

1.  expr2 expr3都是BNF中定义的non-terminal
2.  PLUS和MINUS都是.y中定义的token类
3.  plus和minus 是事先定义好的C语言函数

关于yacc中BNF的推导过程引用后面的《lex和yacc简明教程》做一下说明：

1.  yacc 在内部维护着两个堆栈；一个分析栈和一个内容栈。分析栈中保存着终结符和非终结符，并且代表当前剖析状态。内容栈是一个YYSTYPE 元素的数组，对于分析栈中的每一个元素都保存着一个对应的值。例如，当yylex 返回一个INTEGER标记时，y acc 把这个标记移入分析栈。同时，相应的yylval 值将会被移入内容栈中。分析栈和内容栈的内容总是同步的，因此从栈中找到对应于一个标记的值是很容易实现的。
2.  对expr: expr '+' expr { $$ = $1 + $3; }来说，在分析栈中我们其实用左式替代了右式。在本例中，我们弹出“expr '+' expr” 然后压入“expr”。 我们通过弹出三个成员，压入一个成员缩小的堆栈。在我们的C 代码中可以用通过相对地址访问内容栈中的值，“ $1”代表右式中的第一个成员，“ $2”代表第二个，后面的以此类推。“ $$ ”表示缩小后的堆栈的顶部。在上面的动作中，把对应两个表达式的值相加，弹出内容栈中的三个成员，然后把造得到的和压入堆栈中。这样，分析栈和内容栈中的内容依然是同步的。

**来看一个用lex和yacc实现计算器的例子**

参考了下面链接的lex和yacc文件：[http://blog.csdn.net/crond123/article/details/3932014](http://blog.csdn.net/crond123/article/details/3932014)

cal.y

```plain
%{
#include <stdio.h>
#include "lex.yy.c"
#define YYSTYPE int 
int yyparse(void);
%}
%token INTEGER PLUS MINUS TIMES DIVIDE LP RP
%%
command : exp {printf("%d/n",$1);}
exp: exp PLUS term {$$ = $1 + $3;}
|exp MINUS term {$$ = $1 - $3;}
|term {$$ = $1;}
;
term : term TIMES factor {$$ = $1 * $3;}
|term DIVIDE factor {$$ = $1/$3;}
|factor {$$ = $1;}
;
factor : INTEGER {$$ = $1;}
| LP exp RP {$$ = $2;}
;
%%
int main()
{
return yyparse();
}
void yyerror(char* s)
{
fprintf(stderr,"%s",s);
}
int yywrap()
{
return 1; 
} 
```

cal.l

```plain
%{ 
#include<string.h>
#include "y.tab.h" 
extern int yylval; 
%} 
numbers ([0-9])+ 
plus "+"
minus "-"
times "*"
divide "/"
lp "("
rp ")"
delim [ /n/t] 
ws {delim}* 
%% 
{numbers} {sscanf(yytext, "%d", &yylval); return INTEGER;} 
{plus} {return PLUS;} 
{minus} {return MINUS;} 
{times} {return TIMES;} 
{divide} {return DIVIDE;} 
{lp} {return LP;} 
{rp} {return RP;} 
{ws} ; 
. {printf("Error");exit(1);} 
%% 
```

使用方式：

yacc -d cal.y

lex cal.l

g++ -o cal y.tab.c

运行./cal 然后输入3+4 ctrl+D就可以看到结果了

**关于lex和yacc中一些预定义的东西**

Lex 变量

yyin  
FILE* 类型。 它指向 lexer 正在解析的当前文件。

yyout  
FILE* 类型。 它指向记录 lexer 输出的位置。 缺省情况下，yyin 和 yyout 都指向标准输入和输出。

yytext  
匹配模式的文本存储在这一变量中（char*）。

yyleng  
给出匹配模式的长度。

yylineno  
提供当前的行数信息。 （lexer不一定支持。）

Lex 函数

yylex()  
这一函数开始分析。 它由 Lex 自动生成。

yywrap()  
这一函数在文件（或输入）的末尾调用。 如果函数的返回值是1，就停止解析。 因此它可以用来解析多个文件。 代码可以写在第三段，这就能够解析多个文件。 方法是使用 yyin 文件指针（见上表）指向不同的文件，直到所有的文件都被解析。 最后，yywrap() 可以返回 1 来表示解析的结束。

yyless(int n)  
这一函数可以用来送回除了前�n? 个字符外的所有读出标记。

yymore()  
这一函数告诉 Lexer 将下一个标记附加到当前标记后。

**参考资料：**

首先推荐《lex and yacc tutorial》 [http://epaperpress.com/lexandyacc/download/LexAndYaccTutorial.pdf](http://epaperpress.com/lexandyacc/download/LexAndYaccTutorial.pdf)  
上面pdf的中文版《lex和yacc简明教程》在在：[http://ishare.iask.sina.com.cn/f/22266803.html](http://ishare.iask.sina.com.cn/f/22266803.html)

[http://memphis.compilertools.net/interpreter.html](http://memphis.compilertools.net/interpreter.html)

[http://www.ibm.com/developerworks/cn/linux/sdk/lex/](http://www.ibm.com/developerworks/cn/linux/sdk/lex/)

[http://hi.baidu.com/kuangxiangjie/blog/item/b4a11c46e333e60e6b63e5fa.html](http://hi.baidu.com/kuangxiangjie/blog/item/b4a11c46e333e60e6b63e5fa.html)

一个老外写的上手教程

[http://www.ibm.com/developerworks/library/l-lexyac/index.html](http://www.ibm.com/developerworks/library/l-lexyac/index.html)

[http://www.ibm.com/developerworks/linux/library/l-lexyac2/index.html](http://www.ibm.com/developerworks/linux/library/l-lexyac2/index.html)

这两个用 lex 和 yacc实现了 c语言解释器

[http://www.lysator.liu.se/c/ANSI-C-grammar-y.html](http://www.lysator.liu.se/c/ANSI-C-grammar-y.html)

[http://www.lysator.liu.se/c/ANSI-C-grammar-l.html](http://www.lysator.liu.se/c/ANSI-C-grammar-l.html)

[http://www.ibm.com/developerworks/cn/linux/game/sdl/pirates-4/index.html](http://www.ibm.com/developerworks/cn/linux/game/sdl/pirates-4/index.html)

---------------------------------------------------


原网址: [访问](https://www.cnblogs.com/hdk1993/p/4922801.html)

创建于: 2020-05-18 11:15:39

目录: default

标签: `www.cnblogs.com`

