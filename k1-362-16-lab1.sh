#!/bin/bash
echo "Выполнила Скок Дарья"
while [ true ]; do
echo "Выберите операцию: удалить(remove), создать(create), переместить(move)"
read op
echo "Имя файла?"
read name
case $op in
create)
touch $name
if [ -f "$name" ]; then
echo "Файл существует"
else 
touch $name
fi
;;
remove)
if [ -f "$name" ]; then
echo "path to file to remove"
read pat
rm $name
else
echo "Нет файла"
fi
;;
move)
if [ -f "$name" ]; then
echo "куда переместить?"
read dest
if [ -d "$dest" ]; then
mv $name $dest
else
echo "Нет такой папки"
fi
else
echo "Нет такого файла"
fi
;;
esac
echo "Еще раз? Y/N"
read choise
case $choise in
Y)
echo
;;
N)
break
;;
esac
done

