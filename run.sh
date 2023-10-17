#!/bin/bash

if [ $# -lt 1 ] ; then
	echo './run [train/valid/predict] [weights] [data]'	
elif [ $1 = 'predict' ] ; then
	if [ $# -eq 3 ]  ; then
		./darknet classifier predict my/coin.data my/coin_model.cfg $2 $3
	else
		echo './run predict weights_path data_path'
	fi
elif [ $1 = 'valid' ] ; then
	if [ $# -eq 2 ] ; then
		./darknet classifier valid my/coin.data my/coin_model.cfg $2
	else
		echo '/.run valid weights'
	fi
elif [ $1 = 'train' ] ; then
	if [ $# -eq 1 ] ; then 
		./darknet classifier train my/coin.data my/coin_model.cfg
	else
		echo './run train'
	fi
else
	echo './run [train/valid/predict] [weights] [data]'
fi
