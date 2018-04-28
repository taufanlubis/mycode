#!/bin/bash

# -------------------------------
# Taufan Lubis
# www.taufanlubis.wordpress.com
# -------------------------------

declare -a var
nl=$'\n' #new line

while read line; do 
   
   content=""
   if [[ "$line" =~ ^BEGIN:VCARD ]]; then
      var[1]=$line
   fi

   if [[ "$line" =~ ^VERSION:2.1 ]]; then
      var[2]=$line
   fi

    if [[ "$line" =~ ^N: ]]; then
      var[3]=$line     
   fi

   if [[ "$line" =~ ^FN: ]]; then
      var[4]=$line
      filename=$line
   fi

   if [[ "$line" =~ ^TEL ]]; then
      var[5]=$line
   fi

   if [[ "$line" =~ ^END:VCARD ]]; then
      var[6]=$line
      cardcontent="${var[1]}$nl${var[2]}$nl${var[3]}$nl${var[4]}$nl${var[5]}$nl${var[6]}"
      echo "$cardcontent" > "$(echo -n "${filename:3}" | tr 'A-Z' 'a-z' | tr -d '\r' ).vcf"
   fi

   unset -v cvar
done < "$1" 

