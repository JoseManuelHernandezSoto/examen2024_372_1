#! /bin/bash
rm -rf webapp
mkdir webapp
cd webapp
mkdir css
mkdir js 
mkdir -p docs/text 
mkdir -p docs/python
mkdir img

#Crea archivos
for file in index.html style.css app.js main.py
do
    touch ./"${file}"
done

#meme
curl -o meme.jpg https://pm1.aminoapps.com/7021/417429318f6b29b6bc737fb95ba1ddafc9ba2decr1-720-642v2_hq.jpg

#Variable de la cantidad de archivos a crear
read -p "Introduce la cantidad de archivos a crear: " numfiles

# Crea los archivos de texto
for x in $(seq 1 $numfiles)
do
    echo "Archivo ${x}" > "file${x}.txt"
done

mv style.css ./css
mv file?.txt ./docs/text
mv file??.txt ./docs/text
mv main.py ./docs/python
mv app.js ./js
mv meme.jpg ./img

mv ./instrucciones/examen372.md ./instrucciones/README.md
