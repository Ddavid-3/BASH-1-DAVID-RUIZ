#!/bin/bash

archivo_preguntas="mazo"
aciertos=0
total=0

while true; do
    pregunta=$(shuf -n 1 "$archivo_preguntas" | cut -d '|' -f1)
    respuesta_correcta=$(grep "$pregunta" "$archivo_preguntas" | cut -d '|' -f2)

    read -p "$pregunta " respuesta
    if [[ "${respuesta,,}" == "${respuesta_correcta,,}" ]]; then
        ((aciertos++))
    fi
    ((total++))

    read -p "Continuar? (S/N) " cont
    [[ $cont =~ [nN] ]] && break
done

echo "Has acertado $aciertos de $total preguntas."
