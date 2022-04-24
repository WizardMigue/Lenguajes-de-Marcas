// alert("Hola Mundo");

var nombre = "Miguel ";
var altura = 170;
document.write(nombre, altura);

var concatenando = nombre + " " + altura;
document.write(concatenando);

var datos = document.getElementById("datos");
datos.innerHTML = `
    <h1>Soy la caja de datos</h1>
    <h2>Mi nombre es ${nombre}</h2>
    <h3>y mido ${altura} cm</h3>
`;

if(altura >= 190){
    datos.innerHTML += `<h1>Eres una persona alta</h1>`;
}else{
    datos.innerHTML += `<h1>Eres una persona bajita</h1>`;
}

for(var i = 2000; i<=2020; i++){
    datos.innerHTML += "<h2>Estamos en el año: " + i;
}

function MuestraMiNombre(nombre, altura) {
    var misDatos = `
        <h1>Soy la caja de datos</h1>
        <h2>Mi nombre es ${nombre}</h2>
        <h3>y mido ${altura} cm</h3>
    `;
    return misDatos;
}

function imprimir() {
    var datos = document.getElementById("datos");
    datos.innerHTML = MuestraMiNombre("Miguel", 180);
}

imprimir();

var nombres = ['Miguel', 'David', 'Juan']
alert(nombres[1]);

for (i = 0; i < nombres.length; i++){
    
}

nombres.forEach(function (nombre) {
    document.write(nombres + '<br/>');
})

