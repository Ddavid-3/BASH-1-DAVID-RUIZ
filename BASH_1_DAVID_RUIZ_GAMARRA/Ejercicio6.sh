#!/bin/bash

if [[ $# -eq 2 ]]; then
    if [[ $1 == "e" ]]; then
        echo "$2 euros son $(echo "$2 * 1.1" | bc -l) dolares"
    elif [[ $1 == "d" ]]; then
        echo "$2 dolares son $(echo "$2 / 1.1" | bc -l) euros"
    else
        echo "Uso: $0 e <cantidad> | $0 d <cantidad>"
    fi
    exit 0
fi

echo "1) Euros a dolares"
echo "2) Dolares a euros"
read opcion
read -p "Introduce la cantidad: " cantidad

if [[ $opcion -eq 1 ]]; then
    echo "$cantidad euros son $(echo "$cantidad * 1.1" | bc -l) dolares"
else
    echo "$cantidad dolares son $(echo "$cantidad / 1.1" | bc -l) euros"
fi
