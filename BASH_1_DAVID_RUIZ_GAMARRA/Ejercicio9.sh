#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Uso: $0 <archivo_agenda>"
    exit 1
fi

agenda=$1

# Verifica si el archivo existe, si no, lo crea
if [[ ! -f $agenda ]]; then
    touch "$agenda"
fi

while true; do
    echo "AGENDA"
    echo "1. Buscar un nombre en la agenda."
    echo "2. Introducir un nuevo nombre."
    echo "3. Borrar un nombre de la agenda."
    echo "4. Mostrar alfabéticamente el contenido de $agenda."
    echo "5. Salir."
    read -p "Elige una opcion (1-5): " opcion

    case $opcion in
        1)
            read -p "Introduce nombre: " nombre
            grep -i "$nombre" "$agenda" || echo "No encontrado."
            ;;
        2)
            read -p "Introduce nombre: " nombre
            read -p "Introduce direccion: " direccion
            read -p "Introduce e-mail: " email
            read -p "Introduce telefono: " telefono
            echo "$nombre | $direccion | $email | $telefono" >> "$agenda"
            echo "Entrada creada con exito en el archivo $agenda."
            ;;
        3)
            read -p "Introduce nombre a borrar: " nombre
            grep -i -n "$nombre" "$agenda"
            read -p "Selecciona numero de linea a borrar: " linea
            sed -i "${linea}d" "$agenda"
            echo "Entrada borrada con exito."
            ;;
        4)
            sort "$agenda"
            ;;
        5)
            echo "Adios."
            exit 0
            ;;
        *)
            echo "Opcion invalida."
            ;;
    esac
done
