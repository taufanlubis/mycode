#include<stdio.h>

int main(void)
{
 setbuf(stdout,NULL);
 while(1) {
  printf(":) ");
  sleep(1);
 }
}
