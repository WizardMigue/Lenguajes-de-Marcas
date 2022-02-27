$Simbolo = "@", "#", "&", "$"
$ConSimbolo = ""
do{
        $ConSimbolo = Read-host "Introduce un caracter valido (@ # $ &)"
    }while($Simbolo -notcontains $ConSimbolo){
    "Has escrito un símbolo correcto"
}