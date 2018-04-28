#include<stdio.h>
int main()
{
  int mychoice;
  
  printf("1.This is option 1\n");
  printf("2.This is option 2\n \n");
  printf("Please, select you choice:");

  scanf("%d", &mychoice);

  switch(mychoice)
  {
  case 1:
	printf("\nYou select option 1\n");
        break;

  case 2:
	printf("\nYou select opiton 2\n");
	break;
  
  default:
	printf("\nPlease, only select 1 or 2\n");
  	break;
  }
}

