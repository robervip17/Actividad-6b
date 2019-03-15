fichero="nombres.txt"
numero=$1

for line in `cat  nombres.txt`;do
	mkdir "$line"
	contador=1
	while [ $contador -le $numero ] ;do
		mkdir $line/"personal$contador"
		contador=$(expr $contador + 1)
	done
done
