#!/bin/bash

# Programa que ordena 3 numeros introducidos por argumento de menor a mayor y despues de mayor a menor

# Comprobamos que se han introducido 3 argumentos
if [ $# -ne 3 ]; then
    echo "Error: Numero de argumentos incorrecto"
    exit 1
fi

num1=$1
num2=$2
num3=$3
aux=0

# Ordenamos de menor a mayor
if [ $num1 -lt $num2 ]; then
    aux=$num1
    num1=$num2
    num2=$aux
fi

if [ $num2 -lt $num3 ]; then
    aux=$num2
    num2=$num3
    num3=$aux

    if [ $num1 -lt $num2 ]; then
        aux=$num1
        num1=$num2
        num2=$aux
    fi
fi

# Mostramos los numeros ordenados de mayor a menor
echo "Ordenados de mayor a menor: $num1 $num2 $num3"

# Pausa de 2 segundos
sleep 2

# Mostramos los numeros ordenados de menor a mayor
echo "Ordenados de menor a mayor: $num3 $num2 $num1"