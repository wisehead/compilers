CC = gcc
CFLAGS = -Wall -I include
LDFLAGS =

SRCDIR = src
OBJDIR = obj
BINDIR = bin

SRCFILES += $(wildcard $(SRCDIR)/*.c)
SRCFILES += $(wildcard ./*.c)
OBJFILES += $(patsubst $(SRCDIR)/%.c+./%.c,$(OBJDIR)/%.o,$(SRCFILES))

TARGET = $(BINDIR)/main

.PHONY: all clean

all: $(TARGET)
$(TARGET): $(OBJFILES)
	$(CC) $(LDFLAGS) $(OBJFILES) -o $(TARGET)
$(OBJDIR)/%.o: $(SRCDIR)/%.c
	echo $(OBJFILES)
	$(CC) $(CFLAGS) -c $(SRCFILES) -o $(OBJFILES)

clean:
	rm -f $(OBJDIR)/*.o $(TARGET)
