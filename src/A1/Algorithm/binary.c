#include <stdio.h>

int binary(int a[],int lb, int ub, int s)
{
    int mid=(lb+ub)/2;
    if(lb>ub)
    {
        printf("Not Found\n");
        return 0;
        
    }
    if(a[mid]>s)
    {
        binary(a,lb,mid-1,s);
    }
    else if(a[mid]<s)
    {
        binary(a,mid+1,ub,s);
    }
    else if(a[mid]==s)
    {
        printf("Found at %dth position\n",mid+1);
        return 0;
    }
}
void main()
{
    int n,i,s;
    printf("Enter the size of array\n");
    scanf("%d",&n);
    int a[n];
    printf("Enter the elements of array in sorted order\n");
    for (i=0;i<n;i++)
    {
        scanf("%d", &a[i]);
    }
    printf("Enter the no. to be searched\n");
    scanf("%d",&s);
    binary(a,0,n-1,s);
}