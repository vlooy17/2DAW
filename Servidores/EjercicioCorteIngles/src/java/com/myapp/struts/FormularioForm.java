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
 * @author Vanlooy
 */
public class FormularioForm extends org.apache.struts.action.ActionForm {
    
    private String email,email2,clave,clave2,nombre,apellidos,provincia,municipio,telefono,nif;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail2() {
        return email2;
    }

    public void setEmail2(String email2) {
        this.email2 = email2;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getClave2() {
        return clave2;
    }

    public void setClave2(String clave2) {
        this.clave2 = clave2;
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

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getNif() {
        return nif;
    }

    public void setNif(String nif) {
        this.nif = nif;
    }
    
    
   

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getEmail() == null || getEmail().length() < 1) {
            errors.add("email", new ActionMessage("error.email.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getClave()== null || getClave().length() < 1) {
            errors.add("clave", new ActionMessage("error.clave.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if ( !getEmail().equals(getEmail2())) {
            errors.add("email2", new ActionMessage("error.email2.igual"));
            // TODO: add 'error.name.required' key to your resources
        }
        if ( !getClave().equals(getClave2())) {
            errors.add("clave2", new ActionMessage("error.clave2.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        
        if (getNombre()== null || getNombre().length() < 1) {
            errors.add("nombre", new ActionMessage("error.nombre.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        
        if (getApellidos()== null || getApellidos().length() < 1) {
            errors.add("apellidos", new ActionMessage("error.apellidos.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        
        if (getMunicipio()== null || getMunicipio().length() < 1) {
            errors.add("municipio", new ActionMessage("error.municipio.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        
        if (getProvincia()== null || getProvincia().length() < 1) {
            errors.add("provincia", new ActionMessage("error.provincia.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        
        if (getTelefono()== null || getTelefono().length() < 1) {
            errors.add("telefono", new ActionMessage("error.telefono.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        
        if (getNif()== null || getNif().length() < 1) {
            errors.add("nif", new ActionMessage("error.nif.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        
        return errors;
    }
}
