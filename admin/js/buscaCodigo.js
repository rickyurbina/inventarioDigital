//variables
const codigo = document.querySelector('#searchCode');

function buscaCodigo(name){
    fetch('views/codeSearch.php', { // ubicacion del archivo que hace la consulta segun el nombre
        method: "POST",            // que le enviamos por metodo POST
        body: new URLSearchParams('name=' + name)
    })
    .then(res => res.json())
    .then(res => verCodigos(res))
    .catch(e => console.error('Error: ' + e))
}

function verCodigos(data){
    console.log(data);
    const lista = Object.entries(data).length;
    console.log(lista);
 
//    // limpiarTablaResultados();
//    listaProds = [];
//    for (let i = 0; i < lista; i++){
//        const productoObj ={
//          id: Date.now()+i,
//          idProducto: data[i]["idProducto"],
//          nombre: data[i]["name"],
//          disponible: data[i]["disponible"],
//          precio: data[i]["dayPrice"],
//          cantidad: 0,
//          medida: data[i]["medida"]
//        }
 
//      // //Añadir al arreglo de productos
//      listaProds = [...listaProds, productoObj];
   
//     } //for
//     creaOpciones();
 
 }