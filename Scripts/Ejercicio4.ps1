$Simbolo = "@", "#", "&", "$"
$ConSimbolo = ""
do{
    $ConSimbolo = Read-host "Introduce un caracter valido (@ # $ &)"
}while($Simbolo -contains $ConSimbolo){
    "Has escrito un símbolo incorrecto"
}