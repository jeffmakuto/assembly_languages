# Learning x86 Assembly language using NASM assembler.

## Example assembling and linking exit.asm file
Assembling:

```
nasm -f elf file.asm -o file.o
```

Linking:
more fine-grained control over the linking process
```
ld -m elf_i386 -o file file.o
```
has standard runtime libraries included so we remove them using 'nostartfile'
```
gcc -m32 -o file file.o -nostartfiles

```
