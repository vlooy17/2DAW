window.onload=iniciar;
function iniciar(){
    document.getElementById("enviar").addEventListener('click',validar,false);
    document.getElementById("nombre").addEventListener('blur',convertirMayuscula,false);
    document.getElementById("apellidos").addEventListener('blur',convertirMayuscula,false);

}

/*function enviar() {
    var nombre = document.getElementById("nombre").value.trim();
    var empresa = document.getElementById("empresa").value.trim();
    var telefono = document.getElementById("telefono").value.trim();
    var mail = document.getElementById("mail").value.trim();
    var comentarios = document.getElementById("areatexto").value.trim();
    if (nombre == "") {
        alert("El nombre es obligatorio");
    }
    else if (nombre.length < 4) {
        alert("Nombre demasiado corto");
    }
    else if (nombre.length > 50) {
        alert("Nombre demasiado largo");
    }
    else if (empresa == "") {
        alert("El nombre de la empresa es obligatorio");
    } else if (empresa.length < 4) {
        alert("Nombre de la empresa demasiado corto");
    } else if (empresa.length > 50) {
        alert("Nombre de la empresa demasiado largo");
    } else if (telefono == "") { alert("El telefono es obligatorio"); } else if (telefono.length != 9) {
        alert("La longitud del telefono debe ser de 9 caracteres"); 44
    } else if (!/[0-9]{8}/.test(telefono) || !/[0-9]{8}/.test(telefono)) {
        alert("El telefono solo puede contener numeros");
    } else if (mail == "") {
        alert("El mail es obligatorio");
    }
    else if (mail.split("@").length != 2) {
        alert("Mail no correcto");
    } else if (mail.split("@")[1].split(".").length < 2) {
        alert("Mail no correcto");
    }
}
function capas(idCapa) {
    var capa = document.getElementById("miCapa");
    switch (idCapa) {
        case 1: capa.innerHTML = "<b>Nombre</b><br>Ingresa tu nombre de 4<br>a 50 caracteres:<br>OBLIGATORIO";
            capa.style.marginLeft = "430px";
            capa.style.marginTop = "0";
            capa.style.position = "absolute";
            break;
        case 2: capa.innerHTML = "<b>Empresa</b><br>Ingresa el nombre de tu<br>Empresa. De 4 a 50 caracteres:<br>OBLIGATORIO";
            capa.style.marginLeft = "430px";
            capa.style.marginTop = "40px";
            capa.style.position = "absolute";
            break;
        case 3:
            capa.innerHTML = "<b>Telefono</b><br>Ingresa un telefono de<br>contacto";
            capa.style.marginLeft = "430px";
            capa.style.marginTop = "80px";
            capa.style.position = "absolute";
            break;
        case 4: capa.innerHTML = "<b>Correo</b><br>Ingresa un email válido:<br>OBLIGATORIO";
            capa.style.marginLeft = "430px";
            capa.style.marginTop = "120px";
            capa.style.position = "absolute";
            break;
        case 5:
            capa.innerHTML = "<b>Comentario</b><br>Ingresa tus comentarios.<br>De 5 a 500 caracteres.<br>OBLIGATORIO";
            capa.style.marginLeft = "430px";
            capa.style.marginTop = "160px";
            capa.style.position = "absolute";
            break;

    }
}
function borraCapas() {
    document.getElementById("miCapa").innerHTML = "";
}
function actualizaInfo(MaxCaracteres) {
    var elemento = document.getElementById("areatexto");
    var info = document.getElementById("info");
    if (elemento.value.length >= MaxCaracteres) {
        info.innerHTML = "Máximo " + MaxCaracteres + " caracteres";
    }
    else {
        info.innerHTML = "Puedes escribir hasta " + (MaxCaracteres - elemento.value.length) + " caracteres adicionales"; 
    } 
}*/

