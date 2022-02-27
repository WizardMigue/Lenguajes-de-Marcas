# @autor: Miguel Ovejero Piedrafita
# Version 1.0
# Descripción: se establece dos parametros en los que solicita al usuario, introducir dos números enteros. Finalmente
# mostrará el resultado de dicha suma por pantalla

[int]$numero1 = Read-Host "Introduce el primer número: "
[int]$numero2 = Read-Host "Introduce el segundo número: "
$resultado = $numero1 + $numero2
Write-Host "El resultado de la suma es $resultado"