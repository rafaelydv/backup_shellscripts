#!/bin/bash
#Script para Backup! Vai compactar com gzip.
#
# Aqui você deve informar o nome do arquivo.
namefile=bkparquivos
#
# Aqui você deve informar o caminho dos dados a serem copiados.
origem=/raid1_wd2TB/arquivos/
#
# Aqui você deve informar o caminho onde o backup será salvo.
destino=/mnt
#
# Esta opção vai verificar a data e hora para acrescentar ao nome do backup feito.
dia=$(date +%d%m%y)
#
# Esta opção vai montar o nome do arquivo de backup.
arquivo="$namefile-$dia.tar.gz"
#
# Execução do processo de backup.
dialog --title "BACKUP DE DADOS" --infobox "INICIANDO BACKUP!" 10 60; sleep 2
dialog --title "BACKUP DE DADOS" --prgbox "tar -zcvpf $destino/$arquivo $origem" 30 120
dialog --title "BACKUP CONCLUÍDO" --prgbox "ls -lh /mnt" 20 75; sleep 2
clear
