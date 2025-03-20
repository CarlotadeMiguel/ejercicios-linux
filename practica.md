

2.1. Instrucciones
Exploración del sistema de archivos:
Verifica tu directorio actual. ¿Qué comando puedes usar para esto?
pwd
---
Lista los archivos y directorios en /home. ¿Cómo puedes listarlos de manera detallada (mostrando permisos y tamaño)?
ls -la /home
---
Crea un nuevo directorio llamado practica-linux dentro de /tmp. ¿Qué comando necesitas?
mkdir /tmp/practica-linux
----

Manipulación de archivos:
Crea un archivo vacío llamado config.txt dentro de practica-linux. ¿Cómo lo harías?
cd practica-linux para entrar en el directorio que hemos creado 
y touch config.txt
---
Escribe algunas líneas de texto en config.txt. ¿Qué comando te permite agregar texto a un archivo?

vi config.txt o nano config.txt

echo "Esta es la tercera línea del archivo." > config.txt este caso sobrescribirá lo que haya
echo "Esta es la tercera línea del archivo." >> config.txt
---
Muestra el contenido del archivo. ¿Cómo puedes hacerlo sin abrir un editor?
cat config.txt
----

Búsqueda de archivos:
Busca todos los archivos .txt en /tmp. ¿Qué comando puedes usar para buscar archivos específicos?
find -name "*.txt"
-----

2.2. Preguntas de reflexión
¿Qué diferencia hay entre pwd y ls?
Pwd te muestra la ruta donde te encuentras y ls te muestra una lista con los archivos que hay en el directorio en el que estás
---
¿Cómo puedes verificar si un archivo existe antes de intentar modificarlo?
if test -f config.txt; then
    echo "El archivo existe."
else
    echo "El archivo no existe."
fi
------

3.1. Instrucciones
Creación de un usuario:
Crea un usuario llamado devuser. Investiga qué comando se usa para crear usuarios y cómo asignarles contraseñas.
sudo useradd devuser

sudo passwd devuser Al ponerlo te pedirá que escribas la contraseña y que la repitas
----

Gestión de permisos:
Cambia el propietario de config.txt a devuser. ¿Qué comando te permite cambiar el propietario de un archivo?
sudo chown devuser:devuser config.txt
---

Modifica los permisos de config.txt para permitir solo lectura. ¿Qué número debes usar con chmod para este propósito?
chmod 644 config.txt
----

Prueba de permisos:
Intenta editar config.txt como el usuario actual. ¿Qué sucede? Luego cambia al usuario devuser y vuelve a intentarlo. 
con nano dice que el archivo es unwritable y al hacerlo con echo texto >> config.txt te dice permiso denegado
---
¿Cómo puedes cambiar temporalmente de usuario desde la terminal?
su devuser
------

3.2. Preguntas de reflexión
¿Qué significa cada columna en la salida de ls -l?
La primera columna muestra los permisos del archivo o directorio.
    Propietario (rwx): Lectura (r), escritura (w), ejecución (x).

    Grupo (rwx): Lectura, escritura, ejecución para el grupo al que pertenece el archivo.

    Otros (rwx): Lectura, escritura, ejecución para todos los demás usuarios.

La segunda columna muestra el número de referencias directa al archivo en el sistema de archivos.

La tercera columna muestra el nombre del propietario del archivo o directorio.

La cuarta columna muestra el nombre del grupo al que pertenece el archivo o directorio.

La quinta columna muestra el tamaño del archivo en bytes. Para directorios, muestra el tamaño del directorio en sí, no el tamaño total de sus contenidos.

La sexta columna muestra la fecha y hora de la última modificación del archivo o directorio.

La última columna muestra el nombre del archivo o directorio.
---
¿Cómo puedes ver los grupos a los que pertenece un usuario?
groups devuser
-----

4.1. Instrucciones
Creación del script:

Crea un script llamado backup.sh que copie config.txt a un directorio de respaldo con una fecha en el nombre del archivo (por ejemplo, backup_config_20231015.txt). Investiga cómo usar variables y comandos como cp y date.
Hacer el script ejecutable:

./backup.sh

Cambia los permisos del script para que sea ejecutable. ¿Qué comando necesitas?
chmod 755 backup.sh
----

Ejecución del script:
Ejecuta tu script y verifica que se haya creado el archivo de respaldo. ¿Cómo puedes asegurarte de que el script funcionó correctamente?
buscando el archivo que se ha creado
find ./respaldo -name 'backup*.txt'
----

Programación con cron:

Configura una tarea programada para ejecutar tu script cada día a las 8:00 AM. Investiga cómo editar el crontab y el formato de horarios.
sudo yum install cronie

sudo systemctl enable crond
sudo systemctl start crond

crontab -e editar

0 8 * * * /tmp/practica-linux/backup.sh

crontab -l ver lo que hay escrito

ver los logs de cron journalctl -u cron
----

4.2. Preguntas de reflexión
¿Qué hace el símbolo # al inicio de una línea en un script?
Puedes usar # para comentar 
Cuando # se combina con ! (llamado shebang), indica al sistema qué intérprete debe usar para ejecutar el script
---

¿Cómo puedes probar tu script antes de programarlo con cron?
Ejecutandolo manualmente ./backup.sh
-----

5.1. Tarea
5.2. Revisión
Ejecuta tu script y comparte los resultados con el instructor. ¿Funcionó correctamente? ¿Qué problemas encontraste y cómo los resolviste?
./info_system.sh

Funcionó correctamente pero me mostraba dos veces la fecha porque con el who también viene. Con who | awk '{print $1}' me quedo con el primer campo. Para poner la fecha en un formato más legible he utilizado %d/%m/%Y
-----

6.1. Resumen
6.2. Reflexión
¿Qué desafíos enfrentaste durante la práctica? ¿Cómo los superaste?
Se me suele olvidar dar el permiso de ejecución y otra vez coloque mal los permisos, pero haciendo un ls -l vi que al propietario no le había dado los permisos que necesitaba.
---

¿Cómo podrías aplicar estos conocimientos en proyectos futuros?
Usar scripting para crear herramientas que simplifiquen tareas repetitivas o complejas como renombrar los archivos de un directorio