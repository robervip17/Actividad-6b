#!/bin/bash
totalPares=0
totalIMpares=0
listaPares=""
listaImpares=""
for linea in `cat numeros.txt`; do
	if [ $(expr $linea % 2) -eq 0 ]; then
		#Numero par
		listaPares="$listaPares $linea"
		totalPares=$(expr $totalPares + $linea)	
	else
		#Numero impar
		listaImpares="$listaIMpares $linea"
		totalImpares=$(expr $totalPares + $linea)
	fi

done

echo "El total de numeros Pares es $totalPares"
echo "El total de numeros Impares es $totalImpares"
echo "La lista de Pares es $listaPares"
echo "La lista de Impares es $listaImpares"




