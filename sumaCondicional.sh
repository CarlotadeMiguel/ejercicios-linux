#!/bin/bash
addition () {
    sum=$(( $1 + $2 ))
    echo "$sum"
}

read -p "Ingresa un número: " int1
read -p "Ingresa un número: " int2

#Valida que los dos sean numeros
if [[ "$int1" =~ ^[0-9]+$ ]] && [[ "$int2" =~ ^[0-9]+$ ]]
then
    result=$(addition $int1 $int2)
    echo "El resultado es: $result"
else
        echo "Error"
fi
