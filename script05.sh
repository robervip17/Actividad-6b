numLineas=1
totalLineas=$(cat listado.txt | wc -l)
contadorWindows=0
cotadorLinux=0

while [ $numLineas -le $totalLineas ]; do
	linea=$(head -n $numLineas listado-txt | tail -n 1)
	os=$(echo $linea | awk '{print $2}')
	p=$(echo $linea | awk '{print $3}')
	if [ $linea = "Windows" ]; then
	$contadorWindows=$(expr $contadorWindows + 1)
	fi
done
echo "Hay $contadorWindows Windows"
