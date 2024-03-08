# Learning x86 Assembly language using NASM assembler.

## Example assembling and linking exit.asm file
Assembling:

```
nasm -f elf exit.asm -o exit.o
```

Linking:
```
ld -m elf_i386 -s -o exit exit.o

```
