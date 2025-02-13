#include <stdio.h>
int main (void)
{
    int x = 1;
    unsigned int xx = 1;
    x = x *2;
    xx = xx *4;

    printf("%d, %u \n",x,xx);
    
    x = x/2;
    printf("%d \n",x);

    return 0;
}