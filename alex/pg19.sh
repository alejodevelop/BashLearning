#!/bin/bash
numeros=()
comparar=()
resultado=()


#se leen los datos del arreglo 
for((i=0; i < 10; i++))
do
echo "digite el numero de la posicion " $i " del arreglo:"
read numeros[i]
done

#se determina las cifras que posee cada numero en el arreglo
for((i=0; i < 10; i++))
do
comparador=${numeros[i]}

while [ $comparador -ge 1 ]   
do
#se almacena en un arreglo de forma ordenada la cantidad de cifras de cada numero 
#los indices del arreglo numeros y comparar llevan el mismo orden
let comparar[i]=${comparar[i]}+1

let comparador=$comparador/10

done

done

#finalmente se verifica cual es el numero con mas cifras, mayor, en todo el arreglo 
indice=0
for((i=0; i < 10; i++))
do
if [[ ${numeros[i]} -ge ${resultado[0]} ]];
then 
resultado[0]=${numeros[i]}
let indice=$i
fi

done

echo "---------------"
echo "El numero " ${resultado[0]} " es el mayor en el arreglo con mas cifras!"
echo "---------------"
echo "Tiene " ${comparar[indice]} "cifras"


