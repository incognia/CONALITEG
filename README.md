# CONALITEG

[![Licencia: Dominio público CC0 1.0](https://img.shields.io/badge/Licencia-Dominio_p%C3%BAblico_CC0_1.0-9F2241.svg)](https://creativecommons.org/publicdomain/zero/1.0/deed.es)

Libros de texto gratuitos para el ciclo 2023-2024 descargados desde el sitio oficial de la Comisión Nacional de Libros de Texto Gratuitos (CONALITEG) de la Secretaría de Educación Pública (SEP).

## Contexto

El 3 de agosto de 2023, recibí de [Martín Bonfil](https://twitter.com/mbonfil_65) a través de WhatsApp un enlace de Google Drive con los libros de texto gratuitos. Eran documentos filtrados, ya que ni la SEP ni la CONALITEG los habían publicado en algún canal oficial. Tomé esos archivos, normalicé los nombres de archivo y los subí a este enlace: [bit.ly/3OnKXhK](https://bit.ly/3OnKXhK)

A partir de ese material, extraje algunos problemas del libro de texto "Múltiples lenguajes" de 4° grado para niños de 9 años. Resolví estos problemas con mis estudiantes de 13 años y compartí mi análisis en [Facebook](https://www.facebook.com/incognia/posts/pfbid02cuWSDPEB5Qkcy6TD1dorfLyaDwCmCHbmgzqNnqQGf5eXcE7Yj6ckQjZLQ1wnEYoSl) y [Twitter (ahora X)](https://twitter.com/incognia/status/1687301172300787713)

Me considero de izquierda socialdemócrata[^1] y observé que la discusión en torno a los libros estaba extremadamente polarizada. Me pareció que lo más adecuado era evaluar los contenidos para formar una opinión informada en lugar de expresar opiniones sin fundamento.

Además de realizar la prueba con mis estudiantes, me tomé el tiempo de leer algunos de los libros. Aunque no son marxistas como afirma la gente de derecha, sí presentan un marcado sesgo ideológico en todos los contenidos, con un énfasis particular en los libros destinados a los docentes. Estos contenidos están influenciados por el [posmodernismo](https://es.wikipedia.org/wiki/Filosof%C3%ADa_posmoderna), la [descolonialidad](https://es.wikipedia.org/wiki/Decolonialidad) y las llamadas "epistemologías del sur" de [Boaventura de Sousa Santos](https://es.wikipedia.org/wiki/Boaventura_de_Sousa_Santos).

En mi opinión como educador de niños tanto en primaria como en secundaria, los libros para maestros carecen de utilidad didáctica y terminan siendo meros panfletos de propaganda ideológica. No ofrecen estrategias concretas para implementar lo que los oficialistas llaman "la nueva escuela mexicana".

En cuanto a los libros destinados a los niños, están desorganizados y completamente desequilibrados. Hay muy pocos contenidos relacionados con matemáticas y ciencias. Además, los pocos que existen contienen errores o están redactados de manera confusa o incluso incomprensible para el grupo de edad al que van dirigidos. La jerga posmoderna es conocida por su falta de claridad y precisión, por lo que esto no debería sorprender.

Otra cuestión que encuentro problemática, aunque no me sorprende, es la insistencia descolonial de valorar el conocimiento tradicional[^2] por encima del conocimiento científico.

Lo anterior es lo que pude percibir del material filtrado, el cual aún no he terminado de leer. Esto se debe a que el 8 de agosto de 2023, el gobierno publicó los libros correspondientes a los seis grados de primaria en este enlace: [libros.conaliteg.gob.mx/primaria.html](https://libros.conaliteg.gob.mx/primaria.html)

Por ello, suspendí la lectura de los materiales filtrados y comencé con los que fueron compartidos por la SEP.

El sitio oficial cuenta con un lector en línea que muestra un conjunto de imágenes en formato JPG, simulando las páginas de un libro electrónico. Debido al formato utilizado, no es posible realizar búsquedas de texto a menos que se utilice un software de reconocimiento óptico de caracteres (OCR por sus siglas en inglés) en cada una de las páginas.

Este formato tampoco es muy cómodo para leerlo *offline* en un iPad o en una tablet. Un simple archivo PDF es más adecuado para este propósito. De ahí mi necesidad de descargar los libros del sitio original, compilarlos en un formato más amigable para la lectura y subirlos a un repositorio de acceso público para su difusión.


## Cómo construí este repositorio

Este repositorio contiene las imágenes descargadas y ordenadas en un directorio con el mismo nombre que el archivo `.htm` que utiliza CONALITEG para referenciar sus libros. Ver imagen:

![Web CONALITEG](https://raw.githubusercontent.com/incognia/CONALITEG/main/img/a248b147-c53b-472e-bc6a-ef0f25f0eca1.png)

En la barra de navegación, se puede ver esta dirección:

`libros.conaliteg.gob.mx/2023/P1LPM.htm#page/8`

La cadena se compone del sitio oficial, el directorio del año (2023) y un archivo llamado `P1LPM.htm`. Después del símbolo de almohadilla (`#`), hay una referencia correspondiente a la página desplegada, en este caso, la ocho.

Asumo que el nombre `P1LPM` se construyó de esta forma:

| Caracter | Significado |
| -------- | ----------- |
| P        | Primaria    | 
| 1        | Grado (1°)  |
| L        | Libro       |
| P        | Para        |
| M        | Maestros[^3]|

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
En el árbol de arriba sólo represento algunos de los archivos dentro del direcqorio que corresponde a un libro. Si deseán ver el árbol de directorios completo, hagan clic [aquí](#%C3%81rbol-de-directorios).

## Árbol de directorios

```bash
CONALITEG
├── Primaria
│   ├── JPG
│   │   ├── 01
│   │   │   ├── P1LPM
│   │   │   ├── P1MLA
│   │   │   ├── P1PAA
│   │   │   ├── P1PCA
│   │   │   ├── P1PEA
│   │   │   ├── P1SDA
│   │   │   └── P1TPA
│   │   ├── 02
│   │   │   ├── P1LPM -> ../01/P1LPM
│   │   │   ├── P2MLA
│   │   │   ├── P2PAA
│   │   │   ├── P2PCA
│   │   │   ├── P2PEA
│   │   │   └── P2SDA
│   │   ├── 03
│   │   │   ├── P3LPM
│   │   │   ├── P3MLA
│   │   │   ├── P3PAA
│   │   │   ├── P3PCA
│   │   │   ├── P3PEA
│   │   │   └── P3SDA
│   │   ├── 04
│   │   │   ├── P0CMA
│   │   │   ├── P0SHA
│   │   │   ├── P3LPM -> ../03/P3LPM
│   │   │   ├── P4MLA
│   │   │   ├── P4PAA
│   │   │   ├── P4PCA
│   │   │   ├── P4PEA
│   │   │   └── P4SDA
│   │   ├── 05
│   │   │   ├── P0CMA -> ../04/P0CMA
│   │   │   ├── P0SHA -> ../04/P0SHA
│   │   │   ├── P5LPM
│   │   │   ├── P5MLA
│   │   │   ├── P5PAA
│   │   │   ├── P5PCA
│   │   │   ├── P5PEA
│   │   │   └── P5SDA
│   │   └── 06
│   │       ├── P0CMA -> ../04/P0CMA
│   │       ├── P0SHA -> ../04/P0SHA
│   │       ├── P5LPM -> ../05/P5LPM
│   │       ├── P6MLA
│   │       ├── P6PAA
│   │       ├── P6PCA
│   │       ├── P6PEA
│   │       └── P6SDA
│   └── PDF
│       ├── 01
│       ├── 02
│       ├── 03
│       ├── 04
│       ├── 05
│       └── 06
├── img
├── sh
└── xlsx
```
<-----borrador incompleto y con typos----->

[^1]: Para resumir, soy de izquierda pero no soy marxista... y tampoco lo son estos libros.

[^2]: Ese término que llaman "saberes".

[^3]: Lo más probable es que sea "maestro y maestra" debido al desdoblamiento del género gramatical, una corrección política absurda, y así.

© 2023 | Rodrigo Ernesto Álvarez Aguilera | [Blog](https://incognia.hashnode.dev) | [Facebook](https://www.facebook.com/incognia) | [Twitter](https://twitter.com/incognia) | [LinkedIn](https://www.linkedin.com/in/rodrigo-alvarez-aguilera) | [Resume (CV )](https://incognia.github.io)
