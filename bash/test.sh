#!/bin/bash

cat /etc/passwd | awk -F":" '
BEGIN {
   print "============================"
   printf "%-8s %-3s\n", "USER","UID" 
   print "============================"
   } 
   NR==1,NR==10 {
   printf "%-8s %4d\n",$1,$3}'

