#!/bin/bash

# Validacion de argumentos
if [[ $# -ne 2 ]]; then
    echo "Uso: $0 <precio> <IVA>"
    exit 1
fi

precio=$1
iva=$2

# Comprobar si los valores son negativos
if [[ $precio < 0 || $iva < 0 ]]; then
    echo "Error: Los valores no pueden ser negativos."
    exit 1
fi

# Calculo del precio final
precio_final=$(echo "$precio + ($precio * $iva / 100)" | bc -l)
echo "El precio final con IVA es: $precio_final"
