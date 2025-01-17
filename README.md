# C Project Template

This repository provides a clean and organized template for C projects. It includes a well-structured folder hierarchy, a `Makefile` for build automation, and guidelines for customizing your (read: myself.. ) project according to your needs.

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

### Usage

- Add  C source files to the `src/` directory.
- Add  header files to the `include/` directory.
- Modify the `Makefile` as needed for your project.

_ Once the build process completes,  run the executables:

Run the main program:
 ```sh
./bin/program_name
```
Run the tests:
```sh
./bin/test
```


