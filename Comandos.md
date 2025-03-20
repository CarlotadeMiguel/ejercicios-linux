# Comandos Linux

A continuación, se presentan algunos comandos básicos de Linux:

## Comandos de Navegación
- `pwd`: Muestra el directorio actual.
- `ls`: Lista los archivos y directorios.
- `cd [directorio]`: Cambia al directorio especificado.

## Comandos de Archivos
- `touch [archivo]`: Crea un archivo vacío.
- `cp [origen] [destino]`: Copia archivos o directorios.
- `mv [origen] [destino]`: Mueve o renombra archivos o directorios.
- `rm [archivo]`: Elimina un archivo.
- `mkdir [directorio]`: Crea un nuevo directorio.
- `rmdir [directorio]`: Elimina un directorio vacío.

## Comandos de Información
- `cat [archivo]`: Muestra el contenido de un archivo.
- `head [archivo]`: Muestra las primeras líneas de un archivo.
- `tail [archivo]`: Muestra las últimas líneas de un archivo.
- `wc [archivo]`: Cuenta líneas, palabras y caracteres en un archivo.

## Comandos de Permisos
- `chmod [permisos] [archivo]`: Cambia los permisos de un archivo.
- `chown [usuario] [archivo]`: Cambia el propietario de un archivo.

## Comandos de Procesos
- `ps`: Muestra los procesos en ejecución.
- `top`: Muestra los procesos en tiempo real.
- `kill [PID]`: Termina un proceso por su ID.

## Comandos de Red
- `ping [host]`: Comprueba la conectividad con un host.
- `ifconfig`: Muestra la configuración de red.
- `wget [URL]`: Descarga archivos desde una URL.

## Otros Comandos Útiles
- `man [comando]`: Muestra el manual de un comando.
- `history`: Muestra el historial de comandos.
- `clear`: Limpia la terminal.


## Comando `read`
El comando `read` se utiliza para leer una línea de entrada desde el usuario o desde un archivo.

### Sintaxis

- `read [opciones] [variable]`

### Ejemplo de Uso
1. Leer entrada del usuario:
    ```bash
    echo "Introduce tu nombre:"
    read nombre
    echo "Hola, $nombre"
    ```

2. Leer múltiples valores:
    ```bash
    echo "Introduce tu nombre y edad:"
    read nombre edad
    echo "Nombre: $nombre, Edad: $edad"
    ```

3. Usar con un archivo:
    ```bash
    while read linea; do
         echo $linea
    done < archivo.txt
    ```

### Opciones Comunes
- `-p`: Muestra un mensaje antes de leer la entrada.
- `-s`: Oculta la entrada (útil para contraseñas).
- `-t`: Establece un tiempo de espera para la entrada.

El comando `read` es muy útil para interactuar con el usuario o procesar datos en scripts.