# Variaveis

data=$( date +'%d/%m/%Y %H:%M' )
header="#!/bin/bash 

#-----------------------------------------------------
# Script	: 
# Descricao	: 
# Versao	: 0.3
# Autor		: n1nr0d eduardo.renan02@hotmail.com
# Data		: $data
# Licenca	: GPL 2.0
#-----------------------------------------------------
# Uso: 
#-----------------------------------------------------
"
#-----------------------------------------------------
# Este script serve para gerar outro script.
# Ele gera com nome .sh no final,
# e add permissões de execução
# O nome a ser chamado depois do ./autoscript, 
# será o nome do script 
# Exemplo: ./autoscript scriptteste
# Logo em seguida, ele entra no editor vi
#-----------------------------------------------------


# Testar se há um nome para o script:

[[ $# -ne 1 ]] && echo "Precisa de *um* nome e somente *um*!" && exit 1


# Testar se o arquivo já existe:

[[ -f $1 ]] && echo "Arquivo com esse nome já existe!Saindo..." && exit 1


echo "$header" > "$1.sh"
chmod +x "$1.sh"
vi "$1.sh"

exit 0
