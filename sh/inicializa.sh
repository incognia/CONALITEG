#!/bin/bash

# Este script Bash realiza varias acciones relacionadas con la creación de un directorio y un archivo.
# A continuación se detallan los pasos que realiza.

# Mostrar un mensaje para solicitar al usuario que ingrese un nombre de directorio.
echo -e "Ingresa directorio"

# Leer la entrada del usuario y guardarla en la variable DIR.
read DIR

# Crear un nuevo directorio con el nombre proporcionado por el usuario.
mkdir $DIR

# Crear un archivo llamado "url.txt" dentro del directorio recién creado.
touch $DIR/url.txt