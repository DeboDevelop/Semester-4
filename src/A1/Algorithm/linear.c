#include <stdio.h>
void main()
{
    int n,i,s;
    printf("Enter the size of array\n");
    scanf("%d",&n);
    int a[n];
    printf("Enter the elements of array\n");
    for (i=0;i<n;i++)
    {
        scanf("%d", &a[i]);
    }
    printf("Enter the no. to be searched\n");
    scanf("%d",&s);
    for (i=0;i<n;i++)
    {
        if(a[i]==s)
        {
            printf("Found at %dth position\n",i+1);
            break;
        }
    }
    if(i==n)
        printf("Not Found\n");
}
