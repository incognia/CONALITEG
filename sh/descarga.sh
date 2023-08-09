#!/bin/bash

echo -e "Ingresa directorio"

read DIR

cd $DIR

wget -i url.txt

md5sum *.jpg > MD5SUM

convert -verbose *.jpg $(echo "${PWD##*/}").pdf