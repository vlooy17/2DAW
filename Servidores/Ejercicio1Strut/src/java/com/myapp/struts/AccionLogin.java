/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author alumno_2DAW
 */
public class AccionLogin extends org.apache.struts.action.Action {

    private String resultado; // creación del método execute

    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception { //si el usuario pulsa el botón de cancelado
        if (this.isCancelled(request)) { //como tenemos en el método execute el objeto ActionMapging podemos mandar a un reenvio del struts-config
            return mapping.findForward("cancelada");
        } else { //creamos un objeto formularioForm
            FormularioForm formularioform = (FormularioForm) form;
            return mapping.findForward("satisfactoria");
        }
    }
}
