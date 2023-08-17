#!/bin/bash

# Este script Bash realiza la acción de mover archivos PDF en diferentes subdirectorios
# basados en el nombre de archivo que cumple con ciertos patrones.
# A continuación, se detallan los pasos que realiza.

# Mover archivos que comienzan con "S1" y terminan en ".pdf" al directorio PDF/01/.
# También se incluye un patrón que comienza con "S0" para mover archivos a PDF/04/.
mv $(find . -type f -name "S1*.pdf") PDF/01/
mv $(find . -type f -name "S0*.pdf") PDF/01/

# Mover archivos que comienzan con "S2" y terminan en ".pdf" al directorio PDF/02/.
mv $(find . -type f -name "S2*.pdf") PDF/02/

# Mover archivos que comienzan con "S3" y terminan en ".pdf" al directorio PDF/03/.
mv $(find . -type f -name "S3*.pdf") PDF/03/