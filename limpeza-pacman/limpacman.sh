#!/bin/bash 

#-----------------------------------------------------
# Script	: 
# Descricao	: 
# Versao	: 0.3
# Autor		: Renan Lima, email: eduardo.renan02@hotmail.com
# Data		: 09/09/2022 14:59
# Licenca	: GPL 2.0
#-----------------------------------------------------
# Uso: 
#-----------------------------------------------------


sudo rm -rf /var/cache/pacman/pkg/* \
	    /var/log/* \
	    $HOME/.cache/* \
	    /home/$USER/.local/share/Trash/files/*
