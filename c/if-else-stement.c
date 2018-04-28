#include<stdio.h>
int main()
{
  int i;
  
  printf("Enter value:");
  scanf("%d", &i);

  if (i<50) 
     printf("%d is smaler than 50\n",i);
  else if (i==50) 
     printf("%d = 50\n",i);
  else 
     printf("%d is bigger than 50\n",i);
  return(0);
}
