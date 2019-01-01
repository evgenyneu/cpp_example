# A simple C++ program

This example shows how to write and build a simple C++ program that adds two numbers.

The program contains of the main file `hello.cpp` that includes an `add` function coded in `add.cpp` and `add.h` files. The `makefile` file includes instruction for compiling the source code into an executable file called `hello`.


## Install source code


```
git clone https://github.com/evgenyneu/cpp_hello_world.git
```

## Change directory

```
cd cpp_hello_world
```


## Compile

```
make
```

## Run


```
./hello
```

## Cleaning

Remove the *.o files:

```
make clean
```

Keep only sources by remove the *.o files, .depend file and the executable:


```
make distclean
```


## Credits

* The code is based on [this article](https://www.learncpp.com/cpp-tutorial/19-header-files/).

* The makefile is based on this [stackoverflow answer](https://stackoverflow.com/a/2481326/297131).
