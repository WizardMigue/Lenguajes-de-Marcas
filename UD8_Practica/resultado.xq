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
for $pok in /pokedex/pokemon
let $pc := $pok/pc
order by number($pc) descending
return $pok

// Consulta liga halloween ball
for $pok in /pokedex/pokemon
let $pc := $pok/pc
order by number($pc) descending
where $pc <= 1500
where $pok/tipo = 'Veneno' or
      $pok/tipo = 'Fantasma' or
      $pok/tipo = 'Bicho' or
      $pok/tipo = 'Siniestro' or
      $pok/tipo = 'Hada'
return $pok

// Consulta liga volador ball
for $pok in /pokedex/pokemon
let $pc := $pok/pc
order by number($pc) descending
where $pc <= 1500
where $pok/tipo = 'Volador'
return $pok

// Consulta liga captura ball


// Consulta liga elemental ball
for $pok in /pokedex/pokemon
let $pc := $pok/pc
order by number($pc) descending
where $pc <= 1500
where $pok/tipo = 'Fuego' or
      $pok/tipo = 'Agua' or
      $pok/tipo = 'Planta'
return $pok