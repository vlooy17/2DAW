function Comprobar() {

    var nombre = document.getElementById("nombre").value;
    if (nombre.length == 0) {
        var x = document.getElementById("errores");
        x.innerHTML = "Hay campos vacios";
    } else {
        var x = document.getElementById("errores");
        x.innerHTML = "";
    }
    var apellidos = document.getElementById("apellidos").value;
    if (apellidos.length == 0) {
        var x = document.getElementById("errores");
        x.innerHTML = "Hay campos vacios";
    } else {
        var x = document.getElementById("errores");
        x.innerHTML = "";
    }
    var edad = document.getElementById("edad").value;
    if (edad.length == 0) {
        var x = document.getElementById("errores");
        x.innerHTML = "Hay campos vacios";
    } else {
        var x = document.getElementById("errores");
        x.innerHTML = "";
    }
    var nif = document.getElementById("nif").value;
    if (nif.length == 0) {
        var x = document.getElementById("errores");
        x.innerHTML = "Hay campos vacios";
    } else {
        var x = document.getElementById("errores");
        x.innerHTML = "";
    }
    var email = document.getElementById("email").value;
    if (email.length == 0) {
        var x = document.getElementById("errores");
        x.innerHTML = "Hay campos vacios";
    } else {
        var x = document.getElementById("errores");
        x.innerHTML = "";
    }
    var provincia = document.getElementById("provincia").selectedIndex;
    alert( );
    if (provincia == 0) {
        var x = document.getElementById("errores");
        x.innerHTML = "Seleccione una provincia";
    } else {
        var x = document.getElementById("errores");
        x.innerHTML = "";
       
    }

    var fecha = document.getElementById("fecha").value;
    if (fecha.length == 0) {
        var x = document.getElementById("errores");
        x.innerHTML = "Hay campos vacios";
    } else {
        var x = document.getElementById("errores");
        x.innerHTML = "";
    }

    var telefono = document.getElementById("telefono").value;
    if (telefono.length == 0) {
        var x = document.getElementById("errores");
        x.innerHTML = "Hay campos vacios";
    } else {
        var x = document.getElementById("errores");
        x.innerHTML = "";
    }
    var hora = document.getElementById("hora").value;
    if (hora.length == 0) {
        var x = document.getElementById("errores");
        x.innerHTML = "Hay campos vacios";
    } else {
        var x = document.getElementById("errores");
        x.innerHTML = "";
    }


}