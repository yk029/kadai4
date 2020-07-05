#!/bin/sh


#数字以外の引数を渡された場合にエラーメッセージを出す
CHAR=`expr "$1" : '\([0-9][0-9]*\)'`
CHAR2=`expr "$2" : '\([0-9][0-9]*\)'`
if [ "$1" != "$CHAR" ]; then
	echo "自然数を入力してください"
	exit 1
elif [ "$2" != "$CHAR2" ]; then
	echo "自然数を入力してください"
	exit 1
fi

#引数の数を確認する
if [ $# -ne 2 ];
then
	echo "引数を二つ入力してください"
	exit 1

fi


#引数を変数に代入する
arg1=$1
arg2=$2


#引数2が引数1より大きい場合は並び替える
if [ $arg2 -gt $arg1 ] ;
then
	sub=$arg1
	arg1=$arg2
	arg2=$sub

fi

#剰余を求める
surplus=$((arg1 % arg2))

#剰余が0ではない場合
if [ $surplus -ne 0 ];
then
	while [ $surplus -ne 0 ] ;
	do
		surplus=$(($arg1 % $arg2))
		arg1=$arg2
		arg2=$surplus

		case $surplus in 0)
			echo "最大公約数は $arg1"
			break ;;
	esac

done
#剰余が0ではない場合
else
	echo "最大公約数は $arg2"
fi
