#!/bin/bash 

#-----------------------------------------------------
# Script	: 
# Descricao	: 
# Versao	: 0.3
# Autor		: Renan Lima, email: eduardo.renan02@hotmail.com
# Data		: 10/06/2022 23:25
# Licenca	: GPL 2.0
#-----------------------------------------------------
# Uso: 
#-----------------------------------------------------

sudo rm -rf /var/cache/apt/archives/* \
	    /var/log/* \
	    $HOME/.cache/* \
	    /home/$USER/.local/share/Trash/files/*
