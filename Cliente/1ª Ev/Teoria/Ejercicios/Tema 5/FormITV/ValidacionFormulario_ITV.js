window.onload = iniciar;
function iniciar() {
    document.getElementById("enviar").addEventListener('click', validar, false);
}
function validar(eventopordefecto) {
    if (validarNombre()) {
        return true;
    } else {
        eventopordefecto.preventDefault();
        return false;
    }

}
function validarNombre() {

    var patronNombre = /^[A-Za-z]{1,}$/;
    var nombre = document.getElementById("nombre");
    nombre = nombre.value;

    if (patronNombre.test(nombre)) {
        return true;
    } else {
        document.getElementById("nombre").focus();
       document.getElementById("nombre").className="error";
        return false;
    }


}