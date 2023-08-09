#!/bin/bash

# Este script Bash realiza la acción de mover archivos PDF en diferentes subdirectorios
# basados en el nombre de archivo que cumple con ciertos patrones.
# A continuación, se detallan los pasos que realiza.

# Mover archivos que comienzan con "P1" y terminan en ".pdf" al directorio PDF/01/.
mv $(find . -type f -name "P1*.pdf") PDF/01/

# Mover archivos que comienzan con "P2" y terminan en ".pdf" al directorio PDF/02/.
mv $(find . -type f -name "P2*.pdf") PDF/02/

# Mover archivos que comienzan con "P3" y terminan en ".pdf" al directorio PDF/03/.
mv $(find . -type f -name "P3*.pdf") PDF/03/

# Mover archivos que comienzan con "P4" y terminan en ".pdf" al directorio PDF/04/.
# También se incluye un patrón que comienza con "P0" para mover archivos a PDF/04/.
mv $(find . -type f -name "P4*.pdf") PDF/04/
mv $(find . -type f -name "P0*.pdf") PDF/04/

# Mover archivos que comienzan con "P5" y terminan en ".pdf" al directorio PDF/05/.
mv $(find . -type f -name "P5*.pdf") PDF/05/

# Mover archivos que comienzan con "P6" y terminan en ".pdf" al directorio PDF/06/.
mv $(find . -type f -name "P6*.pdf") PDF/06/