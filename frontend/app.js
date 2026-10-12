const btnBuscar = document.getElementById('btnBuscar');
const inputNombre = document.getElementById('inputNombre');
const resultado = document.getElementById('resultado');

btnBuscar.addEventListener('click', async () => {
    const nombre= inputNombre.value.toLowerCase().trim();
    if(!nombre) return;
    resultado.innerHTML = 'Buscando....';

    try {
        const respuesta = await fetch(`https://pokeapi.co/api/v2/pokemon/${nombre}`)
        if (!respuesta.ok){
            throw new Error('Pokemon no encontrado')
        }

        const datos = await respuesta.json();
        mostrarPokemon(datos);
    } catch (error) {
        resultado.innerHTML = `<p> X ${error.message} </p>`;
    }

})

function mostrarPokemon(datos){
    const tipos = datos.types.map(t => t.type.name).join(', ');
    let peso = datos.weight*0.1;
    let talla= datos.height*0.1;
    resultado.innerHTML = `
        <div class="tarjeta">
            <h2>${datos.name}</h2>
            <img src="${datos.sprites.front_default}">
            <p>Tipo: ${tipos}</p>
            <p>Peso: ${peso}kg</p>
            <p>Altura: ${talla}m</p>
            <p>Esperiencia: ${datos.base_experience}</p>
        </div>
    `
}