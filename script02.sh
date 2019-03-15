fichero="precipitaciones.txt"
suma=0
contador=0
media=0

for line in `cat $fichero | awk '{print $2}'`; do
	suma=$((suma + line))
	contador=$(expr $contador + 1)
	media=$((suma / contador))
done

echo "La media de precipitaciones es $media"
