# Variaveis

data=$( date +'%d/%m/%Y %H:%M' )
header="#!/bin/bash 

#-----------------------------------------------------
# Script	: 
# Descricao	: 
# Versao	: 0.2
# Autor		: n1nr0d eduardo.renan02@hotmail.com
# Data		: $data
# Licenca	: GPL 2.0
#-----------------------------------------------------
# Uso:
#-----------------------------------------------------
"

# Testar se há um nome para o script:

[[ $# -ne 1 ]] && echo "Precisa de *um* nome e somente *um*!" && exit 1

# Testar se o arquivo já existe:

[[ -f $1 ]] && echo "Arquivo com esse nome já existe!Saindo..." && exit 1

echo "$header" > "$1.sh"
chmod +x "$1.sh"
vi "$1.sh"

exit 0
