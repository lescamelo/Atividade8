#!bin/bash

read -p "Informe o nome do arquivo: " arquivo1
read -p "Informe o nome do novo arquivo: " arquivo2

tr -s '\n' < ${arquivo1} > ${arquivo2}
