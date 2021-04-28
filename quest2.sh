#!bin/bash

read -p "Informe o nome do arquivo: " arquivo1


tr -s '\n''\n' <  ${arquivo1} > arquivo2.txt
cat arquivo2.txt

