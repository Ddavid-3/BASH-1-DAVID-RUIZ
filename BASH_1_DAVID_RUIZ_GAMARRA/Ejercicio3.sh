#!/bin/bash

# Verifica que el usuario pase un UID
if [[ $# -ne 1 ]]; then
    echo "Uso: $0 <UID>"
    exit 1
fi

usuario=$(getent passwd "$1" | cut -d: -f1)

if [[ -z $usuario ]]; then
    echo "El UID $1 no corresponde a ningun usuario."
else
    echo "El UID $1 pertenece a: $usuario."
fi
