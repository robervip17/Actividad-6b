directorio=$1
contador=0

for line in  `ls $directorio/*.txt` ;do
	echo "Borrando fichero $line."
	contador=$(expr $contador + 1)
done
echo "Ficheros borrados: $contador"
