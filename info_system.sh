#!/bin/bash

# Obtiene la fecha actual
CURRENT_DATE=$(date +"%d/%m/%Y")

#Obtiene el listado de usuarios
USUARIOS=$(who | awk '{print $1}')

# Escribe la informacion en system_info.txt.
echo "Fecha: ${CURRENT_DATE} Usuarios: ${USUARIOS}" >> system_info.txt

# Muestra un mensaje de confirmación
echo "Informacion del sistema guardada en system_info.txt"
