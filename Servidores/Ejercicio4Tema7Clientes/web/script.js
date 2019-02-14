window.onload = iniciar;
function iniciar() {
    document.getElementById("comp").addEventListener("click", valida, false);
}


function valida() {

    peticion_http = inicializa_xhr();
    if (peticion_http) {

        peticion_http.onreadystatechange = procesaRespuestaJSON;
        peticion_http.open("POST", "textoJSON.jsp", true);
        peticion_http.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        var query_string = crea_query_string();
        peticion_http.send(query_string);
    }
}
function crea_query_string() {

    var usuario = document.getElementById("usuario");
    return "usuario=" + encodeURIComponent(usuario.value) +
            "&nocache=" + Math.random();



}
function inicializa_xhr() {
    if (window.XMLHttpRequest) {
        peticion_http = new XMLHttpRequest();

    } else if (window.ActiveXObjetc) {
        peticion_http = new ActiveXObjetc("Microsoft.XMLHTTP");
    }
    return peticion_http;
}
function procesaRespuestaJSON() {
    if (peticion_http.readyState == 4) {
        if (peticion_http.status == 200) {
            var respuesta_json = peticion_http.responseText;
            var objeto_json = eval("(" + respuesta_json + ")");
            var mensaje = objeto_json.disponible;
            var usu = document.getElementById("usuario").value;
            if (mensaje == "SI") {
                var form = "<form>"
                        + "Nombre:  <input type='text' name='' value='' /><br>"
                        + "Apellidos: <input type='text' name='' value='' /><br>"
                        + "Correo: <input type='text' name='' value='' /><br>"
                        + "</form>";
                var txt2 = "El nombre de usuario " + mensaje + " está disponible";

                document.getElementById("respuesta").innerHTML = txt2 + form;
                ;

            } else {


                var alt = objeto_json.alternativas;
                var longitud = alt.length;
                var txt = "<ul>";
                for (var i = 0; i < longitud; i++) {
                    var alt1 = objeto_json.alternativas[i];
                    txt = txt + "<a href='#'><li id='lista' onclick='cambia(this);'>" + alt1 + "</li></a>";
                }
                txt = txt + "</ul>";
                document.getElementById("respuesta").innerHTML = mensaje + " está disponible el nombre elegido prueba con: <br>" + txt;

            }
        }
    }
}
function cambia(nuv) {
    var n = nuv.firstChild.nodeValue;
    var usu = document.getElementById("usuario");
    usu.value = n;
}
