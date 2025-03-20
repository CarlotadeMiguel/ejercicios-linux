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
    sudo mv index.html /var/www/HTML/
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
    `chmod - R [permisos] [archivo]`:  Indica que el comando debe aplicarse de manera recursiva, es decir, a todos los archivos y subdirectorios dentro del directorio especificado.
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
    read -p  "Introduce tu nombre y edad:" nombre edad
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


## Comando scp
El comando scp (Secure Copy) se utiliza para copiar archivos de forma segura entre máquinas en una red. Es similar al comando cp, pero funciona sobre SSH, lo que significa que los archivos se transfieren cifrados.

### Sintaxis
`scp [opciones] [[usuario@]host1:]ruta1 [[usuario@]host2:]ruta2`

- [usuario@]host1:: Especifica el usuario y el host de origen.
- ruta1: Especifica la ruta al archivo o directorio que se copiará.
- [usuario@]host2:: Especifica el usuario y el host de destino.
- ruta2: Especifica la ruta donde se guardará el archivo o directorio.

`scp -r /ruta/local/directorio usuario@host_remoto:/ruta/remota`

### Opciones comunes
- `-i`: Especifica una clave privada para la autenticación.
- `-r`: Copia directorios de forma recursiva.
    `scp -i ~/[rutaDelaclave] -r * [user]@[ip]:[rutaDondeCopiarasLosArchivos]`
    `scp -i ~/Downloads/labuser.pem -r * ec2-user@ip:/home/ec2-user/`
- `-P`: Especifica un puerto diferente al predeterminado.
- `-v`: Muestra información detallada sobre la transferencia (modo verbose).

