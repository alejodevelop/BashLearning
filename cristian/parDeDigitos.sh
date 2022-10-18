#!/bin/bash
numeros=()
#almacena todos los numeros que cumplen la condicion
comparaciones=()

#se llena el vector de nuemeros para posteriormente usarlo
for ((i=0; i < 10 ;i++))
do
echo "Digita el numero en la posicion " $i " del vector"
read numeros[i]
done



indice=0

#se recorre cada posicion del vector que almacena los numeros
for numero in ${numeros[@]}
do

par=0

#se valida cada digito que conforma el numero para determinar si cumplen la condicion de ser pares
for((i=1; $par != 1; ))
do
let cifra=$numero/$i
let i=$i*10
let modulo=$cifra%2
if [[ $modulo -le 0 ]]
then
if [[ $cifra -eq 0 ]]
then
comparaciones[indice]=$numero
par=1
else
# echo $cifra ' es par'
par=0
fi
else
# echo $cifra ' es impar'
par=1
fi

done

indice=$indice+1

done

echo

echo "los numeros almacenados en el vector cuyos digitos son todos numeros pares son: " 
echo "[ " ${comparaciones[@]} " ]"
