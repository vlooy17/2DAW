window.onload = iniciar;
            function iniciar(){
                
                document.getElementById("boton1").addEventListener("click",descargarArchivo,false);
                document.getElementById("boton2").addEventListener("click",descargarArchivo1,false);
                document.getElementById("boton3").addEventListener("click",descargarArchivo2,false);
            }
            function descargarArchivo() {
                //obtener la instancia del objeto XMLHttpRequest
                if (window.XMLHttpRequest) {
                    peticion_http = new XMLHttpRequest();
                } else if (window.ActiveXObjetc) {
                    peticion_http = new ActiveXObjetc("Microsoft.XMLHTTP");
                }
                //alert(peticion_http.readyState);
                //Preparar la funcion de respuesta
                peticion_http.onreadystatechange = muestraContenido;
                //Realizar peticion HTTP
                peticion_http.open('GET', 'libros.xml', true);
                peticion_http.send(null);

            }
            function descargarArchivo1() {
                //obtener la instancia del objeto XMLHttpRequest
                if (window.XMLHttpRequest) {
                    peticion_http = new XMLHttpRequest();
                } else if (window.ActiveXObjetc) {
                    peticion_http = new ActiveXObjetc("Microsoft.XMLHTTP");
                }
                //alert(peticion_http.readyState);
                //Preparar la funcion de respuesta
                peticion_http.onreadystatechange = muestraContenidoInfantil;
                //Realizar peticion HTTP
                peticion_http.open('GET', 'libros.xml', true);
                peticion_http.send(null);

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
                peticion_http.open('GET', 'libros.xml', true);
                peticion_http.send(null);

            }
            function muestraContenido() {
                var categoria = "";
                var titulo = "";
                var pais = "";
                var txt = "";
                var longitud = "";
                var txt3 = "";
                var txt4 ="";
                var txt5 = "";

                if (peticion_http.readyState == 4) {
                    if (peticion_http.status == 200) {
                        document.getElementById('datos').innerHTML = "";
                        var document_xml = peticion_http.responseXML;
                        var x = document_xml.getElementsByTagName("Libreria");
                        categoria = document_xml.getElementsByTagName("Infantil")[0];
                        titulo = categoria.getElementsByTagName("Titulo");

                        longitud = titulo.length;

                        for (i = 0; i < longitud; i++) {
                            categoria = document_xml.getElementsByTagName("Infantil")[0];
                            titulo = categoria.getElementsByTagName("Titulo")[i].firstChild.nodeValue;
                            txt = txt + "Titulo: "+titulo+"<br>";
                            
                        }
                        txt2 = "INFANTIL<br>"+txt
                        
                        categoria = document_xml.getElementsByTagName("Adultos")[0];
                        titulo = categoria.getElementsByTagName("Titulo");

                        longitud = titulo.length;

                        for (i = 0; i < longitud; i++) {
                            categoria = document_xml.getElementsByTagName("Adultos")[0];
                            titulo = categoria.getElementsByTagName("Titulo")[i].firstChild.nodeValue;
                            txt3 = txt3 + "Titulo: "+titulo+"<br>";
                            
                        }
                        
                        txt4 = "ADULTOS<br>"+txt3;
                        
                        txt5 = txt2 + txt4;
                        
                        document.getElementById('datos').innerHTML = txt5;
                    }
                }
            }
            function muestraContenido2() {
                var categoria = "";
                var titulo = "";
                var pais = "";
                var txt = "";
                var longitud = "";
                var txt3 = "";
                var txt4 ="";
                var txt5 = "";

                if (peticion_http.readyState == 4) {
                    if (peticion_http.status == 200) {
                        document.getElementById('datos').innerHTML = "";
                        var document_xml = peticion_http.responseXML;
                        var x = document_xml.getElementsByTagName("Libreria");   
                        categoria = document_xml.getElementsByTagName("Adultos")[0];
                        titulo = categoria.getElementsByTagName("Titulo");

                        longitud = titulo.length;

                        for (i = 0; i < longitud; i++) {
                            categoria = document_xml.getElementsByTagName("Adultos")[0];
                            titulo = categoria.getElementsByTagName("Titulo")[i].firstChild.nodeValue;
                            txt3 = txt3 + "Titulo: "+titulo+"<br>";
                            
                        }
                        
                        txt4 = "ADULTOS<br>"+txt3;                  
                        document.getElementById('datos').innerHTML = txt4;
                    }
                }
            }
            function muestraContenidoInfantil() {
                document.getElementById('datos').innerHTML = "";
                var categoria = "";
                var titulo = "";
                var pais = "";
                var txt = "";
                var longitud = "";
                var txt3 = "";
                var txt4 ="";
                var txt5 = "";

                if (peticion_http.readyState == 4) {
                    if (peticion_http.status == 200) {
                        var document_xml = peticion_http.responseXML;
                        var x = document_xml.getElementsByTagName("Libreria");
                        categoria = document_xml.getElementsByTagName("Infantil")[0];
                        titulo = categoria.getElementsByTagName("Titulo");

                        longitud = titulo.length;

                        for (i = 0; i < longitud; i++) {
                            categoria = document_xml.getElementsByTagName("Infantil")[0];
                            titulo = categoria.getElementsByTagName("Titulo")[i].firstChild.nodeValue;
                            txt = txt + "Titulo: "+titulo+"<br>";
                            
                        }
                        txt2 = "INFANTIL<br>"+txt
                        
                       
                        
                        document.getElementById('datos').innerHTML = txt2;
                    }
                }
            }
