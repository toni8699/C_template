# Define the directories
SDIR = src
ODIR = obj
IDIR = include
BINDIR = bin
# Define the compiler and flags
CC = gcc
CFLAGS = -g -Wall -Wextra -Werror -I$(IDIR)

# Define the libraries to link
LIBS =

# Define the program name here
TARGET = program_name

# Get a list of all the source files in the src directory
SRC = $(wildcard $(SDIR)/*.c)

# Generate a list of object files
OBJ = $(patsubst $(SDIR)/%.c,$(ODIR)/%.o,$(SRC))


# Rule for compiling object files
$(ODIR)/%.o: $(SDIR)/%.c
	@mkdir -p $(ODIR)
	$(CC) $(CFLAGS) -c -o $@ $<

# Rule for building the final program
$(BINDIR)/$(TARGET): $(OBJ)
	@mkdir -p $(BINDIR)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

# Rule for cleaning the project
.PHONY: clean all
all: $(BINDIR)/$(TARGET)

clean:
	rm -f $(ODIR)/* $(NAME) *~ core 
cleanall:
	rm -f $(ODIR)/* $(BINDIR)/* $(NAME) *~ core