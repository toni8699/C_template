# Define the directories
SRDIR = src
ODIR = obj
IDIR = include
BINDIR = bin
TESTDIR = tests

# Define the compiler and flags
CC = gcc
CFLAGS =  -Wall -Wextra -Werror -I$(IDIR)

# Define the libraries to link
LIBS =

# Define the program name here
TARGET = program_name

# Define the test name
TEST = test

# Get a list of all the source files in the src directory
MAIN_SOURCES = $(wildcard $(SRDIR)/*.c)

#Test files
TEST_SOURCES = $(TESTDIR)/test.c $(SRDIR)/foo.c $(SRDIR)/bar.c $(SRDIR)/fib.c

# Object files
MAIN_OBJ = $(patsubst $(SRDIR)/%.c, $(ODIR)/%.o, $(MAIN_SOURCES))
TEST_OBJ = $(patsubst $(SRDIR)/%.c, $(ODIR)/%.o, $(TEST_SOURCES))

# Rule for compiling object files
$(ODIR)/%.o:$(SRDIR)/%.c 
	@mkdir -p $(ODIR)
	$(CC) $(CFLAGS) -c -o $@ $<
$(ODIR)/%.o: $(TESTDIR)/%.c
	@mkdir -p $(ODIR)
	$(CC) $(CFLAGS) -c -o $@ $<


# Building the main executable
$(BINDIR)/$(TARGET): $(MAIN_OBJ)
	@mkdir -p $(BINDIR)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

# Building the test
$(BINDIR)/$(TEST): $(TEST_OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

# Rule for cleaning the project
.PHONY: clean all
all: $(BINDIR)/$(TARGET) $(BINDIR)/$(TEST)

clean:
	rm -f $(ODIR)/* $(BINDIR)/$(TARGET) *~ core

cleanall:
	rm -f $(ODIR)/* $(BINDIR)/* *~ core