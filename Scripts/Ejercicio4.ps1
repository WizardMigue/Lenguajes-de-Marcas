# @autor: Miguel Ovejero Piedrafita
# Version 1.0
# Descripcion: incluye un array de cadenas de caracteres y un Do While que se ejecutará mientras la condición 
# a evaluar no se cumpla y eso lo comprobará el uso del elemento -contains. Por último, mostrará texto por pantalla 
# que indicará si el carácter introducido está en el array de caracteres.

$Simbolo = "@", "#", "&", "$"
$ConSimbolo = ""
do{
    $ConSimbolo = Read-host "Introduce un caracter valido (@ # $ &)"
}while($Simbolo -contains $ConSimbolo){
    "Has escrito un símbolo incorrecto"
}