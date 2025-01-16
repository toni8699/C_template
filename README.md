# C Project Template

This repository provides a clean and organized template for C projects. It includes a well-structured folder hierarchy, a `Makefile` for build automation, and guidelines for customizing your project according to your needs.

## Folder Structure
```
project/
├── src/           # Source code files (e.g., .c files)
│   ├── main.c     # Entry point for your program
│   ├── utils.c    # Example module
├── include/       # Header files (e.g., .h files)
│   ├── utils.h    # Header for utils.c
├── obj/           # Compiled object files (*.o)
│   ├── main.o
│   ├── utils.o
├── bin/           # Compiled executables
│   ├── program    # Default name for the executable
├── tests/         # Test files and scripts
├── Makefile       # Build automation file
└── README.md      # Project documentation
```

---

## Getting Started

### Prerequisites

- GCC (GNU Compiler Collection)
- Make

#### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/toni8699/C_template.git
    cd C_template
    ```

2. Build the project:
    ```sh
    make
    ```

3. Run the compiled binary:
    ```sh
    ./bin/your_executable
    ```

## Usage

- Add your C source files to the `src/` directory.
- Add your header files to the `include/` directory.
- Modify the `Makefile` as needed for your project.

