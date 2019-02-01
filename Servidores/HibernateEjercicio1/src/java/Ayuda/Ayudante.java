/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ayuda;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author alumno_2DAW
 */
public class Ayudante {
    
    Session session = null;
    
    public Ayudante(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        this.session = sessionFactory.openSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        
    }
    
    public List<Category> getCategoria(){
        List<Category> Categorias;
        Query q = session.createQuery("from Category as category");
        Categorias = (List<Category>) q.list();
        return Categorias;
    }
    public List<Film> getLista(String valor){
        List<Film> Categorias;
        Query q = session.createQuery("select p from Film as p,FilmCategory as fc,WHERE fc.film=p.filmId and fc.category ="+valor);
        Categorias = (List<Film>) q.list();
        return Categorias;
    }
    
}
