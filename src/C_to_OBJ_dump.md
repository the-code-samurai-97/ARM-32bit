### C file to Objdump

``` bash
arm-linux-gnueabihf-gcc  file.c -o file -static
```
## no -stdlib cause the clib for print f will not be linked

``` bash
arm-linux-gnueabihf-objdump -d ./file > ./file.dump
``` 
## find the main by searching 