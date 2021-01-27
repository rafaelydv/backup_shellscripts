#!/bin/bash
#Script para Backup com comando TAR sem compactadores.
echo
read -p "IFORME O NOME PARA O ARQUIVO DE BACKUP: " namefile
echo
read -p "INFORME UM DIRETÓRIO PARA FAZER O BACKUP: " origem
echo
read -p "INFORME UM DESTINO PARA SALVAR O BACKUP: " destino
dia=$(date +%d%m%y)
arquivo="$namefile-$dia.tar"
dialog --title "BACKUP DE DADOS" --infobox "INICIANDO BACKUP!" 10 60; sleep 2
dialog --title "BACKUP DE DADOS" --prgbox "tar -cvpf $destino/$arquivo $origem" 30 120
dialog --title "BACKUP CONCLUÍDO" --prgbox "ls -lh /mnt" 20 75
clear
