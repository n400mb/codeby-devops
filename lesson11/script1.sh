#!/bin/bash
#-----------------------------------------#
# Скрипт создает папку если не существует #
# в нем файлы
#-----------------------------------------#

DIR=$HOME/myfolder	# Константа путь к папке


if [ ! -f "$DIR" ] ; then   # Если папка не существует, создать ее
	mkdir -p "$DIR"
fi
echo "До выполнения скрипта"
ls -la "$DIR"
for i in {1..5}; do
	if [ ! -f "$DIR"/file$i.txt ]; then
		touch "$DIR"/file$i.txt
	fi

	if [ $i -eq 1 ]; then
		echo "Hello my friend" > "$DIR"/file$i.txt
		date  >> "$DIR"/file$i.txt
	fi
	if [ $i -eq 2 ]; then
		chmod 777 "$DIR"/file$i.txt
	fi
	if [ $i -eq 3 ]; then 
		cat /dev/random | tr -dc "a-zA-Z0-9" | head -c20 > "$DIR"/file$i.txt
	fi
done
echo "После выполнения скрипта"

ls -la "$DIR"
