
        function nivel2(objeto) {

            reiniciarNicel2();
            switch (objeto.id) {

                case 'ESO':
                    celda = document.createElement("td");
                    celda.innerHTML = "1º Eso";
                    celda.setAttribute("onmouseout", "this.style.background='WHITE';this.style.color='BLACK");
                    celda.setAttribute("onmouseover", "this.style.background='#008080';this.style.color='WHITE");
                    fila = document.createElement("tr"); fila.appendChild(celda);
                    document.getElementById("tablaNivel2").appendChild(fila);

                    celda = document.createElement("td");
                    celda.innerHTML = "2º Eso";
                    celda.setAttribute("onmouseout", "this.style.background='WHITE';this.style.color='BLACK");
                    celda.setAttribute("onmouseover", "this.style.background='#008080';this.style.color='WHITE");
                    fila = document.createElement("tr"); fila.appendChild(celda);
                    document.getElementById("tablaNivel2").appendChild(fila);

                    celda = document.createElement("td");
                    celda.innerHTML = "3º Eso";
                    celda.setAttribute("onmouseout", "this.style.background='WHITE';this.style.color='BLACK");
                    celda.setAttribute("onmouseover", "this.style.background='#008080';this.style.color='WHITE");
                    fila = document.createElement("tr"); fila.appendChild(celda);
                    document.getElementById("tablaNivel2").appendChild(fila);

                    celda = document.createElement("td");
                    celda.innerHTML = "4º Eso";
                    celda.setAttribute("onmouseout", "this.style.background='WHITE';this.style.color='BLACK");
                    celda.setAttribute("onmouseover", "this.style.background='#008080';this.style.color='WHITE");
                    fila = document.createElement("tr"); fila.appendChild(celda);
                    document.getElementById("tablaNivel2").appendChild(fila);

                    break;
                case 'CFGM':
                    celda = document.createElement("td");
                    celda.innerHTML = "Cocina y Gastronomía";
                    celda.setAttribute("onmouseout", "this.style.background='WHITE';this.style.color='BLACK");
                    celda.setAttribute("onmouseover", "this.style.background='#008080';this.style.color='WHITE");
                    fila = document.createElement("tr"); fila.appendChild(celda);
                    document.getElementById("tablaNivel2").appendChild(fila);

                    celda = document.createElement("td");
                    celda.innerHTML = "Auxiliar de Enfermeria";
                    celda.setAttribute("onmouseout", "this.style.background='WHITE';this.style.color='BLACK");
                    celda.setAttribute("onmouseover", "this.style.background='#008080';this.style.color='WHITE");
                    fila = document.createElement("tr"); fila.appendChild(celda);
                    document.getElementById("tablaNivel2").appendChild(fila);

                    break;
                case 'CFGS':
                    celda = document.createElement("td");
                    celda.innerHTML = "Imagen para el diagnóstico";
                    celda.setAttribute("onmouseout", "this.style.background='WHITE';this.style.color='BLACK");
                    celda.setAttribute("onmouseover", "this.style.background='#008080';this.style.color='WHITE");
                    fila = document.createElement("tr"); fila.appendChild(celda);
                    document.getElementById("tablaNivel2").appendChild(fila);

                    celda = document.createElement("td");
                    celda.innerHTML = "Desarrollo de Aplicaciones Web";
                    celda.setAttribute("onmouseout", "this.style.background='WHITE';this.style.color='BLACK");
                    celda.setAttribute("onmouseover", "nivel3(this);this.style.background='#008080';this.style.color='WHITE");
                    fila = document.createElement("tr"); fila.appendChild(celda);
                    document.getElementById("tablaNivel2").appendChild(fila);

                    break;
            }
            poscionarNivel2(objeto);

        }
        function reiniciarNicel2() {
            var tablaNivel2 = document.getElementById("tablaNivel2");
            var indice = tablaNivel2.childNodes.length;

            for (var i = indice - 1; i >= 0; i--) {
                tablaNivel2.removeChild(tablaNivel2.childNodes[i]);
            }
        }
        function getAbsoluteElementPosition(element) {
            if (typeof element == "string")
                element = document.getElementById(element)
            if (!element) return { top: 0, left: 0 };
            var x = 0;
            var y = 0;
            while (element.offsetParent) {
                x += element.offsetLeft;
                y += element.offsetTop;
                element = element.offsetParent;
            }
            return { top: y, left: x };

        }
        function poscionarNivel2(objeto) {
            var pos = getAbsoluteElementPosition(objeto)
            var x = pos.top;
            var y = pos.left;

            var ventanita = document.getElementById("ventanaNivel2");
            ventanita.style.top = x + objeto.offsetTop + "px";
            ventanita.style.left = y + "px";

        }