#!/bin/sh
#
:<<COMENTARIO
Este script destina-se para realização de Backup com comando TAR sem fazer uso
de compactação. A compactação de dados está propensa a apresentar erros 
além de consumir muito tempo e recurso de hardware. No entanto se deseja 
fazer uso da compactação basta adicionar o devido parâmetro na linha 
que contém o comando TAR. O script foi desenvolvido para não ser
interativo, isso significa que o usuário terá que editar este script
para informar os parâmetros básico descritos abaixo. Devido a essa
característica, seu uso é mais indicado para as rotinas de backup
dentro de servidores onde se definine apenas uma vez os parâmetros
de backup e este será executado indefinidas vezes pelo agendador
de tarefas escolhido (diáriamente, semanalmente, mensalmente, etc).
Lembre-se de que sem a compactação o espaço requerido em disco será maior.
COMENTARIO
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
arquivo="$namefile-$dia.tar"
#
# Execução do processo de backup.
dialog --title "BACKUP DE DADOS" --infobox "INICIANDO BACKUP!" 10 60; sleep 2
dialog --title "BACKUP DE DADOS" --prgbox "tar -cvpf $destino/$arquivo $origem" 30 120
dialog --title "BACKUP CONCLUÍDO" --prgbox "ls -lh /mnt" 20 75; sleep 2
clear
