#!/bin/bash

read -p "Introduce el nombre del archivo: " archivo

echo "1) Mostrar contenido"
echo "2) Duplicar"
echo "3) Mover"
echo "4) Copiar"
echo "5) Borrar"
read opcion

case $opcion in
    1) cat "$archivo" ;;
    2) cp "$archivo" "$archivo.bak" ;;
    3) read -p "Destino: " dir; mv "$archivo" "$dir" ;;
    4) read -p "Destino: " destino; cp "$archivo" "$destino" ;;
    5) rm "$archivo" ;;
    *) echo "Opcion no valida." ;;
esac
