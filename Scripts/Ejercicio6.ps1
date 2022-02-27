# @autor: Miguel Ovejero Piedrafita
# Version 1.0
# Descripción: incluye un array de cadenas de caracteres y un Do While que se ejecutará mientras la condición 
# a evaluar no se cumpla y eso lo comprobará el uso del elemento -notcontains. Por último, mostrará texto por pantalla 
# que indicará si el carácter introducido está en el array de caracteres.

function obtenerRespuesta 
# Inicio de la función obtenerRespuesta
{
    $Simbolo = "@", "#", "&", "$"
    $ConSimbolo = ""
    do
    {
        $ConSimbolo = Read-host "Introduce un caracter valido (@ # $ &)"
        }while($Simbolo -notcontains $ConSimbolo){
        "Has escrito un símbolo correcto"
    }
}
# Fin de la funcion obtenerRespuesta
obtenerRespuesta