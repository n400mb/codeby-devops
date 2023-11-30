#!/bin/bash
#############################################
# Скрипт именяет структуру файлов созданных #
# первым скриптом                           #
#############################################

DIR=$HOME/myfolder
NOTDIR=65
NUMBER_FILE=0
FILE_2=$DIR/file2.txt

Check_path()
{
if [ ! -d "$DIR" ] ; then
echo "Папка $DIR не существует"
return $NOTDIR
fi


for file in `ls $DIR`; do              # В цикле считаем количество файлов
	((NUMBER_FILE=NUMBER_FILE+1))
done
echo "Количество файлов в папке $NUMBER_FILE"
if [ -f $FILE_2 ]; then
	chmod 664 $FILE_2 
	echo "Права файла `ls -la $FILE_2`"
fi
echo "Удаляем все пустые файлы"
find "$DIR" -type f -empty -exec rm  {} \;   #Находим пусты файлы и удаляем их
ls -la $DIR
echo "Удаляем стоки кроме первой"
find ~/myfolder -type f ! -empty -exec sed -i '2,$d'  {} \; 
return 0
}

Check_path
exit 0
