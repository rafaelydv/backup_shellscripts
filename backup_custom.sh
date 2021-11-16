#!/bin/bash
#
:<<COMENTARIO
Este script destina-se para realização de Backup com comando TAR sem fazer uso
de compactação. A compactação de dados está propensa a apresentar erros 
além de consumir muito tempo e recurso de hardware. No entanto se deseja 
fazer uso da compactação basta adicionar o devido parâmetro na linha 
que contém o comando TAR. O script foi desenvolvido para ser interativo, 
permitindo que o usuário especifique o nome do arquivo de backup gerado, 
bem como os dados a serem copiados e o local de destino onde serão salvos. 
É indicado para situações de uso exporádico onde o caminho dos dados a serem 
copiados e o caminho onde serão salvos muda constantemente, não sendo 
necessário alterar o script a cada tarefa de backup. Devido a essa 
característica ele não é indicado para rotinas fixas de backup. 
Lembre-se de que sem a compactação o espaço requerido em disco será maior.
COMENTARIO
#
echo
read -p "IFORME O NOME PARA O ARQUIVO DE BACKUP: " namefile
echo "${namefile:?Atenção você deve informar o nome do arquivo que será criado\!}"
echo
read -p "INFORME UM DIRETÓRIO PARA FAZER O BACKUP: " origem
echo "${origem:?Atenção você deve informar a origem do dados para backup\!}"
echo
read -p "INFORME UM DESTINO PARA SALVAR O BACKUP: " destino
echo "${destino:?Atenção você deve informar o local para salvar o backup\!}"
echo
#
dia=$(date +%d%m%y)
#
arquivo="$namefile-$dia.tar"
#
cd $origem
#
dialog --title "BACKUP DE DADOS" --infobox "INICIANDO BACKUP!" 10 60; sleep 2
dialog --title "BACKUP DE DADOS" --prgbox "tar -cvpf $destino/$arquivo *" 30 120
dialog --title "BACKUP CONCLUÍDO" --prgbox "ls -lh $destino" 20 75
clear
