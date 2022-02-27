function crearDirectorio
{
$ubicacion = Read-Host "Introduce el nombre del directorio a crear: "
$ruta = Read-Host "Introduce la ruta absoluta donde vas a crear el directorio"

Set-Location -Path $ruta
New-Item -ItemType Directory -Name $ubicacion
}
crearDirectorio