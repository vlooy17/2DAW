/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dvdRental;


import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author alumno_2DAW
 */
public class FilmHelper {
    Session session=null;//creamos la sesion
    public FilmHelper(){
        
        // El objeto SessionFactory se encarga de decir al sistema, donde se encuentran todos los ficheros de mapeo de Hibernate
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        
        //optenemos la session
        this.session = sessionFactory.openSession();
        
        //Para trabajar con una base de datos usamos las transacciones
        org.hibernate.Transaction tx = session.beginTransaction();
        
    }
    
}
