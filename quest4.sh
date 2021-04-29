#!/bin/bash

read -p "Insira o endereço IP desejado: " IP

o1=$(echo $IP | awk -F. '{print $1}')
o2=$(echo $IP | awk -F. '{print $2}')
o3=$(echo $IP | awk -F. '{print $3}')
o4=$(echo $IP | awk -F. '{print $4}')

echo -n "Octeto 1 em binário: " && echo "obase=2; $o1" | bc
echo -n "Octeto 2 em binário: " && echo "obase=2; $o2" | bc
echo -n "Octeto 3 em binário: " && echo "obase=2; $o3" | bc
echo -n "Octeto 4 em binário: " && echo "obase=2; $o4" | bc
