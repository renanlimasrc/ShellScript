#!/bin/bash 

#-----------------------------------------------------
# Script	: 
# Descricao	: 
# Versao	: 0.3
# Autor		: Renan Lima, email: eduardo.renan02@hotmail.com
# Data		: 25/12/2022 19:40
# Licenca	: GPL 2.0
#-----------------------------------------------------
# Uso: 
#-----------------------------------------------------

inicio=0
num=0
totp=0
read -p "Digite um número para contar quantos num primos tem entre 0 e ele: " num
while [[ $num -gt $inicio ]]
do
((inicio++))
echo $inicio
in=$(bc <<< "$inicio % 2")
in2=$(bc <<< "$inicio % 3")
if [[ $inicio -eq 2 || $inicio -eq 3 || $inicio -ne 1 && $in -ne 0 && $in2 -ne 0 ]]
then
((totp++))
fi
done
echo "Há $totp números primos entre 0 e $num"
