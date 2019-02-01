window.onload = iniciar;

function iniciar() {
    primero = document.getElementById("primero");
    segundo = document.getElementById("segundo");
    genera = document.getElementById("genera");
    compara = document.getElementById("compara");

    genera.addEventListener("click", generaR, false);
    compara.addEventListener("click", comparaR, false);

}
function generaR() {
    numeroAnterior1 = primero.firstChild;
    numeroAnterior2 = segundo.firstChild;
   
    
    numero1 = Math.round(Math.random() * 9);
    numero2 = Math.round(Math.random() * 9);

    

    datoUno = document.createTextNode(numero1);
    primero.appendChild(datoUno);
    datoDos = document.createTextNode(numero2);
    segundo.appendChild(datoDos);

    if (numeroAnterior1 != null ) {
        numeroAnterior1.remove();
    }
    if(numeroAnterior2 != null){
        numeroAnterior2.remove();
    }
    

}
function comparaR() {


    res = document.getElementById("resultado");
    resF = res.firstChild;

    if(resF!=null){
        resF.remove();
    }

    hijo1 = primero.firstChild;
    hijo2 = segundo.firstChild;

    if (numero1 > numero2) {

        datoR = document.createTextNode(numero1);
        res.appendChild(datoR);
        hijo1.remove();
        resF.remove();

    } else {


        datoR = document.createTextNode(numero2);
        res.appendChild(datoR);
        hijo2.remove();
        resF.remove();
    }

    if (numero1 == numero2) {

        datoR = document.createTextNode(numero1);
        res.appendChild(datoR);
        hijo1.remove();
        resF.remove();

    }





}