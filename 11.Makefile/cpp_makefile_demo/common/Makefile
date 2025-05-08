#ccache,fast C/C++ compiler cache,  if ccache installed, .bash_profile shuld add "export CCACHE=ccache"
CC=$(CCACHE) g++
GCC=$(CCACHE) gcc

INC=

CPPFLAGS=-g -Wall

LIBS=

EXE=
ALIB=libCommon.a

SRC1=$(wildcard *.cpp)
SRC2=$(wildcard *.c)

OBJ1=$(SRC1:.cpp=.o)
OBJ2=$(SRC2:.c=.o)

all:$(ALIB)

$(ALIB):$(OBJ1) $(OBJ2)
	$(AR) crs $@ $^

$(OBJ1):%.o:%.cpp
	$(CC) -c $(INC) $(CPPFLAGS)  $< -o $@
	
$(OBJ2):%.o:%.c
	$(GCC) -c $(INC) $(CPPFLAGS) $< -o $@
	
clean:
	rm -rf ./*.o
	rm -rf ./$(ALIB)

