#!/bin/sh
#
:<<COMENTARIO
Este script foi construído para fazer a restauração de Backup 
feita com comando TAR. Se você usou o script backup_custom.sh ou
backup_fixed.sh, a restauração do backup pode ser feita com este script.
COMENTARIO
#
# Aqui você deve informar o caminho do arquivo de backup que deve ser restaurado.
origem=/mnt/bkparquivos-230321.tar
#
# Aqui você deve informar o caminho onde o backup será restaurado.
destino=var/ftp/
#
# Execução do processo de backup.
dialog --title "RESTAURAÇÃO DE BACKUP" --infobox "INICIANDO RESTAURAÇÃO!" 10 60; sleep 2
dialog --title "RESTAURAÇÃO DE BACKUP" --prgbox "tar -xvf $origem $destino" 30 120
dialog --title "RESTAURAÇÃO CONCLUÍDA" --prgbox "ls -lh $destino" 20 75; sleep 2
clear