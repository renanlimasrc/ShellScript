#!/bin/bash 

#-----------------------------------------------------
# Script	: 
# Descricao	: 
# Versao	: 0.2
# Autor		: n1nr0d eduardo.renan02@hotmail.com
# Data		: 21/03/2022 10:11
# Licenca	: GPL 2.0
#-----------------------------------------------------
# Uso: 
#-----------------------------------------------------

if [ -f /var/run/reboot-required ]
then
    echo "[*** Olá $USER, você precisa reinicar! ***]"
else
	echo "[*** Olá $USER, não é necessário reiniciar!***]"
fi
