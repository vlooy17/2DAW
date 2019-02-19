/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author alumno_2DAW
 */
public class FormularioForm extends org.apache.struts.action.ActionForm {

    private String nombre, apellidos, email, codigoPostal, password, confPasw, login, info;
    private boolean comedia, musical, aventura, clasicos, melodrama, policialco;
    String losSeleccionados;

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public boolean isPolicialco() {
        return policialco;
    }

    public void setPolicialco(boolean policialco) {
        this.policialco = policialco;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(String codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfPasw() {
        return confPasw;
    }

    public void setConfPasw(String confPasw) {
        this.confPasw = confPasw;
    }

    public boolean isComedia() {
        return comedia;
    }

    public void setComedia(boolean comedia) {
        this.comedia = comedia;
    }

    public boolean isMusical() {
        return musical;
    }

    public void setMusical(boolean musical) {
        this.musical = musical;
    }

    public boolean isAventura() {
        return aventura;
    }

    public void setAventura(boolean aventura) {
        this.aventura = aventura;
    }

    public boolean isClasicos() {
        return clasicos;
    }

    public void setClásicos(boolean clasicos) {
        this.clasicos = clasicos;
    }

    public boolean isMelodrama() {
        return melodrama;
    }

    public void setMelodrama(boolean melodrama) {
        this.melodrama = melodrama;
    }

    public String getLosSeleccionados() {
        return losSeleccionados;
    }

    public void setLosSeleccionados(String losSeleccionados) {
        this.losSeleccionados = losSeleccionados;
    }

    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getNombre() == null || getNombre().length() < 1) {
            errors.add("nombre", new ActionMessage("error.nombre.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getApellidos() == null || getApellidos().length() < 1) {
            errors.add("apellidos", new ActionMessage("error.apellidos.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getEmail() == null || getEmail().length() < 1) {
            errors.add("email", new ActionMessage("error.email.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getPassword() == null || getPassword().length() < 1) {
            errors.add("password", new ActionMessage("error.password.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getConfPasw() == null || getConfPasw().length() < 1) {
            errors.add("confPasw", new ActionMessage("error.confPasw.required"));
            // TODO: add 'error.name.required' key to your resources
        } else if (!getConfPasw().equals(getPassword())) {
            errors.add("confPasw", new ActionMessage("error.confPasw.erroneo"));

        }
        if (getCodigoPostal() == null || getCodigoPostal().length() < 1) {
            errors.add("codigoPostal", new ActionMessage("error.codigoPostal.required"));
            // TODO: add 'error.name.required' key to your resources
        } else if (!codigoPostal.matches("\\d{5}")) {
            errors.add("codigoPostal", new ActionMessage("error.codigoPostal.tamaño"));
        }
        if (getLogin() == null || getLogin().length() < 1) {
            errors.add("login", new ActionMessage("error.login.required"));
            // TODO: add 'error.name.required' key to your resources
        }

        losSeleccionados = "";
        if (comedia) {
            losSeleccionados += "comedia" + " ";
        }
        if (aventura) {
            losSeleccionados += "aventura" + " ";
        }
        if (musical) {
            losSeleccionados += "musical" + " ";
        }
        if (policialco) {
            losSeleccionados += "policiaco" + " ";
        }
        if (clasicos) {
            losSeleccionados += "clasico" + " ";
        }
        if (melodrama) {
            losSeleccionados += "melodrama" + " ";
        }
        return errors;
    }
}
