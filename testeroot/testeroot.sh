#!/bin/bash 

#-----------------------------------------------------
# Script	: 
# Descricao	: Alguns tipos de teste para descobrir se há permissões root
# Versao	: 0.3
# Autor		: Renan Lima, email: eduardo.renan02@hotmail.com
# Data		: 15/05/2022 00:06
# Licenca	: GPL 2.0
#-----------------------------------------------------
# Uso: 
#-----------------------------------------------------

quem=$(whoami)
[[ "$quem" != "root" ]] && echo "Não é root, você é o "$quem"!" || echo "Você é o root!"

# Outra opção também é verificar se é possível ler o gshadow:
#[[ -r /etc/gshadow ]] && echo "É o root!" || echo "Vc não é o root!"
