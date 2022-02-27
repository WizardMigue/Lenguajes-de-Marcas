# @autor: Miguel Ovejero Piedrafita
# Version 1.0
# Descripción: Establece un parametro en el que solicita al usuario introducir un número entero.


[int]$nota = Read-Host "Introduce la nota obtenida: "

if( $nota -ile 4){
    Write-Host "Insuficiente"
} elseif($nota -eq 5){
    Write-Host "Suficiente"
} elseif($nota -eq 6){
    Write-Host "Bien"
} elseif($nota -eq 7){
    Write-Host "Notable"
} elseif($nota -eq 8){
    Write-Host "Notable"
} elseif($nota -eq 9){
    Write-Host "Sobresaliente"
} elseif($nota -eq 10){
    Write-Host "Sobresaliente" 
} elseif($nota -eq 11){
    Write-Host "El valor introducido no es valido"
}