#!/bin/sh


rename=$(yad --entry --editable --no-buttons --width 410 \
	--title="Please enter new name and press enter:")
if [ -z "$rename" ]; then
	printf "no caption was selected, aborting!\n"
	exit 1
fi
printf "rename is $rename\n"

count=1; for i in *.jpg; do j=`printf "%04d" $count`; j="$rename"$j".jpg"; count=$((count + 1)); mv "$i" $j; done

	fi
	shift
done
