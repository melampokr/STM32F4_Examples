#!/bin/sh

DIR="/usr/lib/arm-none-eabi/include /usr/include/newlib/ ."

rm -v cscope.* tags 3> /dev/null
echo make CTAGS
ctags -w -o tags `find -L $DIR -name '*.[chsS]' -print`

echo make cscope
find -L $DIR -name '*.[chsS]' -print > cscope.files
cscope -b -q -k
