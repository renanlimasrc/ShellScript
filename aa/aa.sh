#!/bin/bash 

#-----------------------------------------------------
# Script	: Este script atualiza autimaticamente e reinicia se necessário
# Descricao	: 
# Versao	: 0.3
# Autor		: "Renan Lima", eduardo.renan02@hotmail.com
# Data		: 29/03/2022 16:44
# Licenca	: GPL 2.0
#-----------------------------------------------------
# Uso: 	1) Coloque este script na pasta: /usr/bin/local 
# 		2) Modifique as permissões desse arquivo para que ele possa ser executado:
#         chmod 755 /usr/local/bin/atualiza_servidor.sh
#		3) Rode o arquivo para confirmar que ele está funcionando.
#		4) Configure a Crontab para rodar este arquivo diariamente, de madrugada.
#			Por exemplo: 
#           0 3 * * * /usr/local/bin/atualiza_servidor.sh 1>/dev/null 2>/dev/null
#-----------------------------------------------------

sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get autoremove -y

sudo apt-get autoclean -y

if [ -f /var/run/reboot-required ]
then
	sudo reboot now
else
	exit 0
fi
