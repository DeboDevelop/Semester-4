#include <stdio.h>

void gcd(int x,int y);
void swap(int x, int y)
{
    if(x>y)
    {
        gcd(x,y);
    }
    else
    {
        gcd(y,x);
    }
}

void gcd(int x,int y)
{
    if(x%y==0)
    {
        printf("is %d\n", y);
    }
    else
    {
        gcd(y,x%y);
    }
}
void main()
{
    int x,y;
    printf("Enter the 2 number:\n");
    scanf("%d%d",&x,&y);
    printf("GCD of %d and %d ",x,y);
    swap(x,y);
}
