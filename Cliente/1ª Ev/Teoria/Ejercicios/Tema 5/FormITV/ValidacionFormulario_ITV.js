window.onload = iniciar;
var x = 5;
function iniciar() {
    document.getElementById("enviar").addEventListener('click', validar, false);
}
function validar(eventopordefecto) {
    if (validarNombre(this)) {
        return true;
    } else {
        eventopordefecto.preventDefault();
        return false;
    }

}
function validarNombre() {

    var patronNombre = /^[A-Za-z]{1,}$/;
    var nombre = false;
    var nombre = document.getElementById("nombre");
    nombre = nombre.value;

    if (patronNombre.test(nombre)) {
        alert("Entra")
        nombre = true
        return nombre;
    } else {
        nombre = false;
        return nombre;
    }


}