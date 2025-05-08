#ccache,fast C/C++ compiler cache,  if ccache installed, .bash_profile shuld add "export CCACHE=ccache"
GXX = $(CCACHE) g++
CC = $(CCACHE) gcc


CCFLAGS = -g -I../common/
	
          
LIB = -lpthread -lcrypto \
	-L../common -lCommon \
	-lrt
	
SOURCE := $(wildcard *.c)
OBJECT := $(subst .c,.o,${SOURCE})
SRC := $(wildcard *.cpp)
OBJ := $(SRC:.cpp=.o)
ALIBS=
TARGET = helloCpp

all : ${TARGET}

${TARGET} : ${OBJECT} $(OBJ)
	$(GXX) $(CCFLAGS) -Wall -o $(TARGET) $(OBJECT) $(OBJ) ${LIB}

${OBJECT} : %.o: %.c
	$(GXX)  $(CCFLAGS) -c $< -o $@

${OBJ} : %.o: %.cpp
	$(GXX)  $(CCFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET)
	rm -f $(OBJECT)
	rm -f $(OBJ)

		
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
