#!/bin/bash
#Script para Backup! Vai compactar com gzip.
namefile=bkparquivos
origem=/raid1_wd2TB/arquivos/
destino=/mnt
dia=$(date +%d%m%y)
arquivo="$namefile-$dia.tar.gz"
dialog --title "BACKUP DE DADOS" --infobox "INICIANDO BACKUP!" 10 60; sleep 2
dialog --title "BACKUP DE DADOS" --prgbox "tar -zcvpf $destino/$arquivo $origem" 30 120
dialog --title "BACKUP CONCLUÍDO" --prgbox "ls -lh /mnt" 20 75
