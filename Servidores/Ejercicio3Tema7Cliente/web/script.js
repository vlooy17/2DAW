
window.onload = iniciar;
function iniciar() {

    descargarArchivo();
    document.getElementById("vali").addEventListener("click", valida, false);
    document.getElementById("categoria").addEventListener("change", descargarArchivo2, false);
}
function valida() {
    //obtener la instancia del objeto XMLHttpRequest
    if (window.XMLHttpRequest) {
        peticion_http2 = new XMLHttpRequest();
    } else if (window.ActiveXObjetc) {
        peticion_http2 = new ActiveXObjetc("Microsoft.XMLHTTP");
    }
    //alert(peticion_http.readyState);
    //Preparar la funcion de respuesta
    peticion_http2.onreadystatechange = muestraContenido3;
    //Realizar peticion HTTP
    peticion_http2.open('POST', 'PeliculasXML.jsp', true);
    peticion_http2.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    var query_string = crea_query_string();
    peticion_http2.send(query_string);

}
function crea_query_string() {
    var cat = document.getElementById("categoria");
    var vc = document.getElementById("videoclub");
    return "categoria=" + encodeURIComponent(cat.value) +
            "&videoclub=" + encodeURIComponent(vc.value) +
            "&nocache=" + Math.random();



}
function descargarArchivo() {

    //obtener la instancia del objeto XMLHttpRequest
    if (window.XMLHttpRequest) {
        peticion_http1 = new XMLHttpRequest();
    } else if (window.ActiveXObjetc) {
        peticion_http1 = new ActiveXObjetc("Microsoft.XMLHTTP");
    }
    //alert(peticion_http.readyState);
    //Preparar la funcion de respuesta
    peticion_http1.onreadystatechange = muestraContenido;
    //Realizar peticion HTTP
    peticion_http1.open('GET', 'TextoXML.jsp', true);
    peticion_http1.send(null);

}
function descargarArchivo2() {

    //obtener la instancia del objeto XMLHttpRequest
    if (window.XMLHttpRequest) {
        peticion_http = new XMLHttpRequest();
    } else if (window.ActiveXObjetc) {
        peticion_http = new ActiveXObjetc("Microsoft.XMLHTTP");
    }
    //alert(peticion_http.readyState);
    //Preparar la funcion de respuesta
    peticion_http.onreadystatechange = muestraContenido2;
    //Realizar peticion HTTP
    peticion_http.open('GET', 'VideoClubXML.jsp', true);
    peticion_http.send(null);

}
function muestraContenido() {

    var categoria = "";
    var categorias = "";
    var codigo = "";
    var nombre = "";
    var txt = "<option>-----</option>";

    if (peticion_http1.readyState == 4) {

        if (peticion_http1.status == 200) {

            var document_xml = peticion_http1.responseXML;
            var categorias = document_xml.getElementsByTagName("categorias")[0];
            categoria = document_xml.getElementsByTagName("categoria");

            var longitud = categoria.length;

            for (var i = 0; i < longitud; i++) {

                categoria = document_xml.getElementsByTagName("categoria")[i];
                codigo = document_xml.getElementsByTagName("codigo")[i].firstChild.nodeValue;
                nombre = document_xml.getElementsByTagName("nombre")[i].firstChild.nodeValue;
                txt = txt + "<option value='" + codigo + "'>" + nombre + "</option>";

            }
            document.getElementById('categoria').innerHTML = txt;
        }
    }

}
function muestraContenido2() {

    var tienda = "";
    var tiendas = "";
    var codigo = "";
    var nombre = "";
    var txt = "";

    if (peticion_http.readyState == 4) {
        if (peticion_http.status == 200) {
            var document_xml = peticion_http.responseXML;
            var tiendas = document_xml.getElementsByTagName("tiendas")[0];
            tienda = document_xml.getElementsByTagName("tienda");

            var longitud = tienda.length;

            for (var i = 0; i < longitud; i++) {

                tienda = document_xml.getElementsByTagName("tienda")[i];
                codigo = document_xml.getElementsByTagName("codigo")[i].firstChild.nodeValue;
                nombre = document_xml.getElementsByTagName("nombre")[i].firstChild.nodeValue;
                txt = txt + "<option value='" + codigo + "'>" + nombre + "</option>";

            }
            document.getElementById('videoclub').innerHTML = txt;
        }
    }

}
function muestraContenido3() {
    document.getElementById('datos').innerHTML = "";
    var categoria = "";
    var tienda = "";
    var pelicula = "";
    var txt = "<br></br>";

    if (peticion_http2.readyState == 4) {

        if (peticion_http2.status == 200) {

            var document_xml = peticion_http2.responseXML;
            categoria = document_xml.getElementsByTagName("categoria")[0];
            tienda = document_xml.getElementsByTagName("tienda");

            var longitud = tienda.length;

            for (var i = 0; i < longitud; i++) {

                categoria = document_xml.getElementsByTagName("categoria")[i];
                pelicula = document_xml.getElementsByTagName("pelicula")[i].firstChild.nodeValue;
                txt = txt + pelicula + "<hr>";

            }
            document.getElementById('datos').innerHTML = txt;
        }
    }

}
