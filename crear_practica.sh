#!/usr/bin/env bash
set -euo pipefail

PATH_PRACTICAS="./practicas/"

TOTAL_PRACTICAS=$(ls $PATH_PRACTICAS | wc -l)

PRACTICA_NUEVA=$(echo "$TOTAL_PRACTICAS + 1" | bc)

DIR_PRACTICA_NUEVA=$PATH_PRACTICAS$PRACTICA_NUEVA

mkdir $DIR_PRACTICA_NUEVA

cp ./template/makefile ./template/main_config.tex $DIR_PRACTICA_NUEVA

touch "$DIR_PRACTICA_NUEVA/main.org"

printf "#+TITLE: practica $PRACTICA_NUEVA
#+LANGUAGE: es #+OPTIONS: title:nil toc:nil

#+LATEX: \\input{./portada.tex}\n\n* Primera Seccion\nLorem..
#+LATEX: \\\renewcommand{\\\thesubsubsection}{C\\\arabic{subsubsection}}
" >> $DIR_PRACTICA_NUEVA/main.org
