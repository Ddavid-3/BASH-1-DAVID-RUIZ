#!/bin/bash

#calcular el area de un triangulo
# comprobar que se introdujeron 2 argumentos
if [ $# -ne 3 ]; then
    echo "Error: Numero de argumentos incorrecto"
    exit 1
fi

if [ $1 == "-r" ]; then

    area=$(echo "scale=2; $2 * $3 / 1" | bc)
    echo "El area del rectangulo es: $area"
    exit 0
fi

if  [ $1 == "-t" ]; then

    area=$(echo "scale=2; $2 * $3 / 2" | bc)
    echo "El area del triangulo es: $area"
    exit 0

fi




#mostramos los resultados de la operaciones 

exit 0