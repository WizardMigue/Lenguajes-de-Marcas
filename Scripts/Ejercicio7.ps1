# @autor: Miguel Ovejero Piedrafita
# Version 1.0
# Descripción: incluye dos parametros en los que solicita al usuario establecer el nombre del directorio y la ruta
# que puede ser relativa (./) o absoluta (C:\Users\Usuario). Dentro de la funcion se encutnra Set-Location para averiguar 
# la ruta de acceso de su ubicación y se creará el directorio en dicha ubicación.

$ubicacion = Read-Host "Introduce el nombre del directorio que vas a crear: "
$ruta = Read-Host "Introduce la ruta absoluta donde vas a crear el directorio"
function crearDirectorio
# Inicio de la funcion crearDirectorio
{
    Set-Location -Path $ruta
    New-Item -ItemType Directory -Name $ubicacion
}
crearDirectorio
# Fin de la funcion crearDirectorio