
window.onload=iniciar;
function iniciar(){
    document.getElementById("enviar").addEventListener('click',validar,false);
    document.getElementById("nombre").addEventListener('blur',convertirMayuscula,false);
    document.getElementById("apellidos").addEventListener('blur',convertirMayuscula,false);

}

function validar(eventopordefecto){
    if(validarcampostexto(this) && validarEdad() && validarNif() && validadEmail() && validarProvincia() && validarFecha() && validarHora() && validarTelefono() ){
        return true;
    }else{
        eventopordefecto.preventDefault();
        return false;
    }
}