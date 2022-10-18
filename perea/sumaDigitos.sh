#!/bin/bash
numeros=()
numeroMayor=0
sumaMayor=0

#llenado del arreglo
for ((i=0; i < 10 ;i++))
do
echo "Digite el numero que se va a almacenar en la posicion " $i " del arreglo"
read numeros[i]
done

#recorre cada posicion del arreglo que guarda los numeros
for numero in ${numeros[@]}
do

digito=1
acum=0
for((i=1; $digito > 0 ; ))
do
let digito=$numero/$i
let i=$i*10
let acum=$acum+$digito
if [[ $acum -gt $sumaMayor ]]
then
sumaMayor=$acum
numeroMayor=$numero
fi

done

done


echo "El numero cuya suma de digitos es mayor dentro del vector es -> " $numeroMayor
