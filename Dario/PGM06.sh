#!/bin/bash
costoProduccion=0
descripcion=''
precioVenta=0
utilidad=0
impuestos=0

echo "Digite el nombre del articulo"
read descripcion
echo "Digite el costo de produccion del articulo"
read costoProduccion

let utilidad=(costoProduccion*115)/100
let impuestos=(costoProduccion*12)/100
let precioVenta=(costoProduccion+utilidad+impuestos)


echo "Nombre articulo: " $descripcion
echo "Utilidad: " $utilidad
echo "Impuestos: " $impuestos
echo "El costo total del articulo es: " $precioVenta
