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

Según lo que me arroja la salida del comando `find` descargé 10,040 (diez mil cuarenta) archivos de `.jpg` desde la web del CONALITEG. hacerlo de forma manual no era opción.

```bash
pwd
/home/incognia/CONALITEG/Primaria

find . -type f -name *.jpg |wc -l
10040
```

Hice un par de scripts en Bash: uno para crear directorios según la nomenclatura de la web oficial y otro para descargar automáticamente los archivos .jpg, fusionarlos en un PDF y calcular las sumas MD5[^4] de las imágenes descargadas. Utilicé un archivo de Excel como paso intermedio para concatenar valores y crear la lista de URLs a descargar.

Amablemente, [Roberto Andrade](https://twitter.com/randrade), un programador experto en PostgreSQL, me señaló que podría haber usado Streamlit[^5]. Estoy de acuerdo, pero no tengo tanta experiencia en Python como él, y mi formación como administrador de sistemas me hace sentir más cómodo con Bash. Además, tenía prisa para evitar que los responsables de los libros cambien de opinión o modifiquen el contenido. Si necesito hacer una segunda versión, podría considerar usar la combinación Python/PostgreSQL.

Existe un tercer script que se encarga de organizar los PDF generados. He colocado el código de todos los scripts en un [anexo](#Scripts) y en el directorio "xlsx" de este repositorio, encontrarás el archivo de Excel correspondiente.

## Anexos

### Árbol de directorios

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

### Scripts

#### `inicializa.sh`

```bash=3
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
```

#### `descarga.sh`

```bash=3
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
```

#### `pdf.sh`

```bash=3
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
```

<-----borrador incompleto y con typos----->

[^1]: Para resumir, soy de izquierda pero no soy marxista... y tampoco lo son estos libros.

[^2]: Ese término que llaman "saberes".

[^3]: Lo más probable es que sea "maestro y maestra" debido al desdoblamiento del género gramatical, una corrección política absurda, y así.

[^4]: Una suma MD5 (Message Digest Algorithm 5) es un valor numérico de 128 bits generado a partir de una cadena de datos. Se utiliza comúnmente como una forma de verificar la integridad de un archivo, es decir, para confirmar que un archivo no ha sido alterado de manera inadvertida o maliciosa durante su transferencia o almacenamiento. Esto se logra calculando la suma MD5 tanto para el archivo original como para la copia recibida, y luego comparando ambas sumas.

[^5]: Streamlit es una herramienta Python que convierte datos en aplicaciones web interactivas con facilidad, ideal para visualización y análisis.

© 2023 | Rodrigo Ernesto Álvarez Aguilera | [Blog](https://incognia.hashnode.dev) | [Facebook](https://www.facebook.com/incognia) | [Twitter](https://twitter.com/incognia) | [LinkedIn](https://www.linkedin.com/in/rodrigo-alvarez-aguilera) | [Resume (CV )](https://incognia.github.io)
