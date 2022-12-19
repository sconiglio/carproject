# Specify the target executable file name
TARGET = HelloWorld

# Specify the object files that the target depends on, separated by spaces
OBJS = HelloWorld.o

# Specify the compiler and compiler flags
CC = gcc
CFLAGS = -Wall -std=c99

# The default target of the Makefile, which will be run if you just type 'make'
all: $(TARGET)

# The rule to build the target executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# The rule to build the object file from the source file
HelloWorld.o: HelloWorld.c
	$(CC) $(CFLAGS) -c HelloWorld.c

# The rule to clean up the build artifacts
clean:
	rm -f $(TARGET) $(OBJS)

