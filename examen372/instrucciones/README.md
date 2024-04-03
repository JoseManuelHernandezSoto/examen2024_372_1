# Examen 372 - Terminal 👻💻

 > " Solo hay un riesgo que deberías evitar a toda costa, y es el riesgo de no hacer nada 💪🔥" *(Denis Waitley)*


### Instrucciones Generales 🤔: 

1. Todas las instrucciones deben ser ejecutadas en terminal a menos que se indique lo contrario.
2. Se permite el uso de internet alias el **"googlazo"**.
3. La entrega del examen es un repositorio en su cuenta de GITHUB con la solución.
4. Cada inciso del examen debe ser marcado como completado para verificar que se ha realizado correctamente.
5. Enviar correo a iavila24@uabc.edu.mx con el link del repositorio para verificar examen.
6. Desde la terminal clonar el gist *(fragmento)* del examen en tu escritorio (desktop) de la siguiente con el comando *`git clone https://gist.github.com/c30b7f7a5fb67e737fba21e63d1e05db.git instrucciones`*.
7. Ingresar en la carpeta intrucciones en la terminal con *`cd instrucciones`*.
8. Remover carpeta de git *`".git"`* con el comando *`rm -rf .git/`*.
9. Inicializa un _**workspace**_ de vscode con el comando *`code .`*
10. Sigue las instrucciones del examen a partir de aqui _(puedes usar una terminal dentro de vscode para ver el progreso)_.
11. Límite de entrega **`02-ABR-2024 23:59:59`**.
---

### Intrucciones Examen 🧐:

- [x] Coloca tu nombre aqui: *`"Hernandez Soto Jose Manuel"`*
- [x] Abre el shell/terminal *`"Git Bash"`*
- [x] Limpia el historial de tu consola: *`"history -c"`*
- [x] Navega al directorio home del usuario. *`"~"`* 
- [x] Crear una carpeta con el nombre. *`"examen372"`* y colocate dentro de ella.
- [x] Crear un script con el nombre. *`"create.sh"`*
- [x] Colocar el shebang dentro del script desde la terminal: *`"#! /bin/bash"`*
---

### Instrucciones dentro del script `create.sh` 🔡:

1. [x] Elimina la carpeta **webapp**. *`"rm -rf"`*
2. [x] Crea la siguiente estructura de carpetas *`"mkdir"`*:
  
    ```
    .
    └── webapp/
        ├── css
        ├── js
        ├── docs/
        │   ├── text
        │   └── python
        └── img
    ```
    
3. [x] Crea los archivos de la aplicación con el siguiente código (incluyelo en el script):
    
    ```sh
    for file in index.html style.css app.js main.py
    do
        touch ./"${file}"
    done
    ```

4. [x] Una vez creados los archivos la carpeta se vera asi utiliza el siguiente comando si quieres ver en consola tu estructura `cmd //c tree //F ./`:

    ```
    .
    └── webapp/
        ├── app.js
        ├── index.html
        ├── main.py
        ├── style.css
        ├── css
        ├── docs/
        │   ├── text
        │   └── python
        ├── img
        └── js

    ```

5. [x] Descargar la imagen de internet con el siguiente comando:
    
    ```sh
    curl -o meme.jpg "https://pm1.aminoapps.com/7021/417429318f6b29b6bc737fb95ba1ddafc9ba2decr1-720-642v2_hq.jpg"
    ```
6. [x] Guarda en una variable la cantidad de archivos de texto que creara el script y pon el siguiente código esto creara la cantidad de archivos .txt ingresada por consola:
    
    ```sh
    read -p "Introduce la cantidad de archivos a crear:" numfiles
    for x in $( seq 1 $numfiles )
    do
        echo "Archivo ${x}" > "file${x}.txt"
    done
    ```

7. [x] Verificar estructura con `"cmd //c tree //F ./"` debe verse de la siguiente manera

    ```
    .
    └── webapp/
        ├── app.js
        ├── file1.txt
        ├── file2.txt
        ├── file3.txt
        ├── file4.txt
        ├── file5.txt
        ├── ...
        ├── ...
        ├── fileN.txt
        ├── index.html
        ├── main.py
        ├── meme.jpg
        ├── style.css  
        ├── css
        ├── docs/
        │   ├── text
        │   └── python
        ├── img
        └── js

    ```
   
8. [x] En el script debe organizar la informacion moviendo los archivos a su respectiva carpeta usando el comando *`"mv"`*:
   
      - [x] Mueve el archivo *`style.css`* a la carpeta **`css`**
      - [x] Los archivos *`fileN.txt`* a la carpeta **`docs/text`**
      - [x] El archivo *`main.py`* a la carpeta **`docs/python`**
      - [x] El *`app.js`* a la carpeta **`js`** 
      - [x] Dejar *`index.html`* en la ruta actual, dentro de **`webapp`**. 
   
9.  [x] Al ejecutar `"cmd //c tree //F ./"` debe verse asi y concluye la programación del script:
   
    ```
    .
    └── webapp/
        ├── index.html
        ├── css/
        │   └── style.css
        ├── docs/
        │   ├── text/
        │   │   ├── file1.txt
        │   │   ├── file2.txt
        │   │   ├── file3.txt
        │   │   ├── file4.txt
        │   │   ├── file5.txt
        │   │   ├── ...
        │   │   ├── ...
        │   │   └── fileN.txt
        │   └── python/
        │       └── main.py
        ├── img/
        │   └── meme.jpg
        └── js/
            └── app.js
        
    ```
---
- [x] Una vez completado el script ejecutarlo para validar que haga lo antes pedido: `./create.sh`
- [x] Renombrar el archivo `examen372.md` a **`README.md`** con la terminal y moverlo a la carpeta *`"examen372"`* con el comando *`"mv"`*
- [x] Guardar el historial de sus comandos: *`history > history.txt`*
- [x] Crear un repositorio remoto en sus cuentas de GITHUB con el nombre *`examen2024_372_1`* y subir (los archivos contenidos en la carpeta *`"examen372"`*):
  - [x]  El historial de comandos *`history.txt`* 
  - [x]  El script bash *`create.sh`*
  - [x]  El archivo *`README.md`*
---

### Extras:

<span style="font-size:1.5em">**+1 extra**</span> en la calificación final del curso si haces los siguiente:

- [x] Incluir todos los comandos para hacer lo siguiente en el *`history.txt`*
- [x] Crear un entorno virtual en python con venv.
- [x] Instalar JupyterLab y crear un notebook con el siguiente código, ejecutar la celda y guardar el resultado.

> consume_api.ipynb
``` python
import requests
x = requests.get('https://jsonplaceholder.typicode.com/todos/1')
print(x.text)
```
<br />

<div align="center" width="250" height="250">

![Examen](https://www.elorientadero.com/wp-content/uploads/2022/01/meme-1.jpg)

</div>