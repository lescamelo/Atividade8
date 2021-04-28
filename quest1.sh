#!/bin/bash

arquivo=${1}
numero=${2}

if [ -f ${arquivo} ];
then
	count=$(wc -l $arquivo | cut -c 1)
	if [ ${count} -lt ${numero} ];
	then
		echo "Falha: O arquivo ${arquivo} possui ${count} linhas!!"
	else
		cat ${arquivo} | head -${numero} | tail -1
	fi
else
	echo "ERRO: O  ARQUIVO NÃO EXISTE."

fi


