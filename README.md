# CONALITEG

[![Licencia: Dominio público CC0 1.0](https://img.shields.io/badge/Licencia-Dominio_p%C3%BAblico_CC0_1.0-9F2241.svg)](https://creativecommons.org/publicdomain/zero/1.0/deed.es)

Libros de texto gratuitos para el ciclo 2023-2024 descargados desde el sitio oficial de la Comisión Nacional de Libros de Texto Gratuitos (CONALITEG) de la Secretaría de Educación Pública (SEP).

## Introducción

El 8 de agosto de 2023 se publicaron los libros correspondientes a los seis grados de primaria en este enlace:

[libros.conaliteg.gob.mx/primaria.html](https://libros.conaliteg.gob.mx/primaria.html)

El sitio oficial cuenta con un lector en línea el cual renderiza un conjunto de imágenes en formato JPG, como páginas de un libro electrónico. Debido al formato empleado, no es posible realizar búsquedas de texto a menos que se ejecute un software de reconocimiento óptico de caracteres (OCR por sus siglas en inglés) en cada una de las páginas.

## Cómo construí el repositorio

Este repositorio contiene las imágenes descargadas, ordenadas en un directorio con el mismo nombre que el archivo `.htm` que utiliza CONALITEG para referenciar sus libros. Ver imagen:

![Ejemplo de imagen](https://raw.githubusercontent.com/incognia/CONALITEG/main/img/a248b147-c53b-472e-bc6a-ef0f25f0eca1.png)

En la barra de navegación, se puede ver esta dirección:

`libros.conaliteg.gob.mx/2023/P1LPM.htm#page/8`

La cadena se compone del sitio oficial, el directorio del año (2023) y un archivo llamado `P1LPM.htm`. Después del símbolo de almohadilla (`#`), hay una referencia correspondiente a la página desplegada, en este caso, la ocho.

El nombre `P1LPM` se construyó de esta forma:

| Caracter | Significado |
| -------- | ----------- |
| P        | Primaria    | 
| 1        | Grado (1°)  |
| L        | Libro       |
| P        | Para        |
| M        | Maestros[^1]|

Por lo tanto, la cadena `P1LPM` corresponde al **Libro para maestros de primer grado de primaria** por lo tanto, los 90 archivos de imagen correspondientes a este libro están almacendados en la siguiente estructura:

```bash
P1LPM/
├── 000.jpg
├── 001.jpg
├── 002.jpg
├── [...]
├── 087.jpg
├── 088.jpg
└── 089.jpg
```

<-----borrador incompleto y con typos----->

[^1]: Lo más probable es que sea por "maestro y maestra" debido al desdoblamiento del género gramatical, una corrección política absurda, y así.

<i class="fa fa-creative-commons"></i> 2023 | Rodrigo Ernesto Álvarez Aguilera | [<i class="fa fa-github"></i>](https://github.com/incognia) |  [<i class="fa fa-gitlab"></i>](https://gitlab.com/incognia) | [<i class="fa fa-behance"></i>](https://www.behance.net/incognia/) | [<i class="fa fa-linkedin"></i>](https://www.linkedin.com/in/rodrigo-alvarez-aguilera/)
