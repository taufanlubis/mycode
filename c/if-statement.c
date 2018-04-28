/* 
IF statement

IF (condition) statement1; else statement2
*/

#include<stdio.h>
int main()
{
  int a;

  printf("Enter value a:");
  scanf("%d", &a);

  if (a>50) printf("Value more than 50\n\n");
    else printf("Value lower than 50 or same\n\n");
  return(0);
}

