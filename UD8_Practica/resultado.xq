// Consulta liga super ball
for $pok in doc("pokemon")/pokedex/pokemon
let $pc := $pok/pc
where $pc <= 1500
order by number ($pok/pc) descending
return $pok

// Consulta liga ultra ball
for $pok in doc("pokemon")/pokedex/pokemon
let $pc := $pok/pc
where $pc <= 2500
order by number ($pok/pc) descending
return $pok

// Consulta liga master ball


// Consulta liga halloween ball


// Consulta liga volador ball


// Consulta liga captura ball


// Consulta liga elemental ball