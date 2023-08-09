#!/bin/bash

# Este es un script Bash que realiza varias acciones en un directorio.
# A continuación se detallan los pasos que realiza.

# Mostrar un mensaje para solicitar al usuario que ingrese un directorio.
echo -e "Ingresa directorio"

# Leer la entrada del usuario y guardarla en la variable DIR.
read DIR

# Cambiar al directorio ingresado por el usuario.
cd $DIR

# Descargar archivos usando el comando wget y leyendo las URLs desde el archivo url.txt.
wget -i url.txt

# Calcular los valores de hash MD5 de los archivos JPEG (*.jpg) y guardarlos en MD5SUM.
md5sum *.jpg > MD5SUM

# Utilizar el comando 'convert' para convertir imágenes JPEG (*.jpg) en un archivo PDF.
# El nombre del archivo PDF se basa en el nombre del directorio actual.
convert -verbose *.jpg $(echo "${PWD##*/}").pdf