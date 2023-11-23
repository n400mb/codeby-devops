#!/bin/bash
DIR=~/myfolder

if [ ! -f "$DIR" ] ; then
	mkdir -p "$DIR"
fi
a=0
for file in `ls $DIR`; do
	((a=a+1))


done
echo "Количество файлов в папке $a"
chmod 664 $DIR/file2.txt 
echo "Права файла `ls -la $DIR/file2.txt`"
echo "Удаляем все пустые файлы"
find "$DIR" -type f -empty -exec rm  {} \;
ls -la $DIR
echo "Удаляем стоки кроме первой"
find ~/myfolder -type f ! -empty -exec sed -i '2,$d'  {} \; 
