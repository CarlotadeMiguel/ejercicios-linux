#!/bin/bash

# Establece el directorio de respaldo
BACKUP_DIR="/tmp/respaldo"

# Crea el directorio de respaldo si no existe
mkdir -p "$BACKUP_DIR"

# Obtiene la fecha actual en formato YYYYMMDD
CURRENT_DATE=$(date +"%Y%m%d")

# Establece el nombre del archivo de respaldo
BACKUP_FILE="backup_config_${CURRENT_DATE}.txt"

# Copia config.txt al directorio de respaldo con el nombre establecido
cp "/tmp/practica-linux/config.txt" "${BACKUP_DIR}/${BACKUP_FILE}"

# Muestra un mensaje de confirmación
echo "Respaldo realizado: ${BACKUP_DIR}/${BACKUP_FILE}"
