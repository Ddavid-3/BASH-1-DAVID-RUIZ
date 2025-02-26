#!/bin/bash

numero_secreto=$(( RANDOM % 10 + 1 ))
intentos=0
jugadores=1

echo "Quieres jugar solo o con un amigo? (1/2)"
read jugadores

# Inicializar puntuaciones
puntuacion1=0
puntuacion2=0
turno=1

while true; do
    echo "Jugador $turno, introduce un numero entre 1 y 10:"
    read num

    (( intentos++ ))

    if [[ $num -eq $numero_secreto ]]; then
        echo "Jugador $turno acerto el numero en $intentos intentos!"
        if [[ $turno -eq 1 ]]; then
            (( puntuacion1++ ))
        else
            (( puntuacion2++ ))
        fi
        break
    else
        if [[ $num -lt $numero_secreto ]]; then
            echo "El numero es mayor."
        else
            echo "El numero es menor."
        fi
    fi

    # Cambiar turno si hay 2 jugadores
    if [[ $jugadores -eq 2 ]]; then
        turno=$(( 3 - turno )) # Alterna entre 1 y 2
    fi
done

# Mostrar puntuaciones
echo "Puntuaciones:"
echo "Jugador 1: $puntuacion1"
if [[ $jugadores -eq 2 ]]; then
    echo "Jugador 2: $puntuacion2"
fi
