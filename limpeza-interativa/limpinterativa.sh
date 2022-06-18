#!/bin/bash 

#-----------------------------------------------------
# Script	: 
# Descricao	: 
# Versao	: 0.2
# Autor		: Renan Lima, email: eduardo.renan02@hotmail.com
# Data		: 10/06/2022 19:38
# Licenca	: GPL 2.0
#-----------------------------------------------------
# Uso: 
#-----------------------------------------------------


# Cache do apt 


read -p "Deseja limpar o cache do apt?[s/n]: " resp

if [[ "${resp,,}" != "s" && "${resp,,}" != "n"   ]]
then
	echo "Digite um valor valido![s/n] "
	exit 1
elif  [[ "${resp,,}" = "s" ]]
	then 
	dirtam=$(du -sh /var/cache/apt/archives/ 2> /dev/null | cut -f1) 
	echo "Tamanho da pasta: $dirtam"
	read -p "Confirma apagar? " del
	if [[ "${del,,}" != "s" && "${del,,}" != "n" ]]
	then
		echo "Digite um valor válido! "
	elif [[ "${del,,}" = "n" ]]
	then 
		echo "saindo..."
	elif [[ "${del,,}" = "s" ]]
	then 
		sudo  rm -rf /var/cache/apt/archives/* 
		echo "Cache do apt limpo!"
	fi
else
	echo "Cache não foi limpo!"
fi	 

# Diretório de logs

read -p "Deseja limpar o diretório de logs?[s/n]: " resp

if [[ "${resp,,}" != "s" && "${resp,,}" != "n"   ]]
then
	echo "Digite um valor valido![s/n] "
	exit 1
elif [[ "${resp,,}" = "s" ]]
	then 
	dirtam=$(du -sh /var/log/ 2> /dev/null | cut -f1) 
	echo "Tamanho da pasta: $dirtam"
	read -p "Confirma apagar? " del
	if [[ "${del,,}" != "s" && "${del,,}" != "nao" ]]
	then
		echo "Digite um valor válido! "
	elif [[ "${del,,}" = "n" ]]
	then 
		echo "saindo..."
	elif [[ "${del,,}" = "s" ]]
	then 
		sudo rm -rf /var/log/*
		echo "logs apagados!"
	fi
else 
	echo "Diretório de logs não foi limpo!"
fi	

# Cache dos programas do usuário atual

read -p "Deseja limpar o diretório de cache?[s/n]: " resp

if [[ "${resp,,}" != "s" && "${resp,,}" != "n"   ]]
then
	echo "Digite um valor valido![s/n] "
	exit 1
elif [[ "${resp,,}" = "s" ]]
	then 
	dirtam=$(du -sh $HOME/.cache/ 2> /dev/null | cut -f1) 
	echo "Tamanho da pasta: $dirtam"
	read -p "Confirma apagar? " del
	if [[ "${del,,}" != "s" && "${del,,}" != "n"  ]]
	then
		echo "Digite um valor válido! "
	elif [[ "${del,,}" = "n" ]]
	then 
		echo "saindo..."
	elif [[ "${del,,}" = "s" ]]
	then 
		sudo rm -rf $HOME/.cache/*
		echo "Cache de programas apagado!"
	fi
else 
	echo "Diretório de cache do usuário não foi limpo!"
fi	

# Lixeira

dirtam=$(ls -a /home/$USER/.local/share/Trash/files/ 2> /dev/null | wc -l  ) 

if [[ "dirtam" -gt 2 ]]
	then
		echo "Lixeira cheia.Items: $[ dirtam - 2 ] " 
		read -p "Confirma apagar? " del
			if [[ "${del,,}" != "s" && "${del,,}" != "n" ]]
				then
				echo "Digite um valor válido! "
				elif [[ "${del,,}" = "s" ]]
				then 
					sudo rm -rf /home/$USER/.local/share/Trash/files/*
					echo "Lixeira esvaziada"
				else 
					echo "Saindo..."
				
			fi
fi