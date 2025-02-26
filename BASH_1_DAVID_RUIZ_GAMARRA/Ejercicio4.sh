#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Opciones: -c <lado> (cuadrado), -r <base> <altura> (rectangulo), -t <base> <altura> (triangulo)"
    exit 1
fi

case $1 in
    -c) echo "Area del cuadrado: $(($2 * $2))" ;;
    -r) echo "Area del rectangulo: $(($2 * $3))" ;;
    -t) echo "Area del triangulo: $(($2 * $3 / 2))" ;;
    *) echo "Opcion invalida." ;;
esac
