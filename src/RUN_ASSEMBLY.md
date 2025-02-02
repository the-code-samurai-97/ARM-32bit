# 1 Compile the Assembly the code

- GCC: arm-linux-gnueabihf-gcc
- -o : output binary file
- -nostdlib: no Optimization from standard library
- -static: for runtime memory
optional
- o1,o2 - optimization
- g1,g2,g3 - debug informations
------------------------------
- asm_test.s : Assembly file
- asm_test : Compiled object

```bash
arm-linux-gnueabihf-gcc asm_test.s -o asm_test -nostdlib -static
```

# Terminal 1
# 2 Run the Code under Arm
- -g: port number to remote execute
------------------------
- asm : compiled binary
```bash
qemu-arm -g 4242 ./asm
```
- the code waits for execution from the remote access side

# Terminal 2
# 3 Execute the Code Using GDB
- get the realpath of the compiled binary for gdb use

```bash
realpath ./asm
```

```bash
gdb-multiarch
```
### output

```bash
Find the GDB manual and other documentation resources online at:
    <http://www.gnu.org/software/gdb/documentation/>.

For help, type "help".
Type "apropos word" to search for commands related to "word".
(gdb) 
```
- Type the file realpath of the compiled object

```bash
(gdb) file /home/workspace/leaarning_arm/ldm_stm/ldm_stm_new
```
- layout next
- layout regs
- These two will give the information about the registers

```bash
(gdb) layout next
(gdb) layout regs
```
# 4 Run the Compiled Binary
-- remote access with same port number
```bash
(gdb) target remote localhost:4242
```

### output
- ni: next instruction
- excutes line by line
```bash
(gdb) ni
```


### info registers
- Information about the current state of registers Memory , value

```bash
(gdb) info registers
```
### References
https://azeria-labs.com/writing-arm-assembly-part-1/


