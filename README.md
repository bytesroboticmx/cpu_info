Wih C Compiler:
sudo apt update
sudo apt install build-essential

Compile:
gcc cpu_info.c -o cpu_info

Execute:
./cpu_info


With NASM:
sudo apt update
sudo apt install nasm

nasm -f elf64 cpu_info.asm -o cpu_info.o

ld cpu_info.o -o cpu_info

./cpu_info


