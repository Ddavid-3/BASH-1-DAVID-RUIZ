#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Uso: $0 num1 num2 num3 ... (o pasa un archivo con numeros o palabras)"
    exit 1
fi

if [[ -f $1 ]]; then
    echo "Orden ascendente:"
    sort "$1"
    echo "Orden descendente:"
    sort -r "$1"
else
    echo -e "$@" | tr ' ' '\n' | sort -n
    echo -e "$@" | tr ' ' '\n' | sort -nr
fi
