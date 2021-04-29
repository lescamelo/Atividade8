#!/bin/bash

arquivo=$1
contador=3

if [ -f ${arquivo} ];
then
	x=$(wc -l ${arquivo} | cut -c 1-2)
	cat ${arquivo} | head -${contador}
	while true;
	do
		read -p "Pressione o ENTER: " testando
		if [ -z ${testando} ];
		then
			contador=$((${contador} + 3))
			cat ${arquivo} | head -${contador}
		if [ ${contador} -ge ${x} ];
		then
			break
		fi

		fi

	done
else
	echo "Erro: ARQUIVO NÃO EXISTE."
fi
