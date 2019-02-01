/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ayudante;

import java.util.List;
import net.sf.ehcache.hibernate.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author alumno_2DAW
 */
public class Ayuda {

    Session session = null;

    public Ayuda() {
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        this.session = sessionFactory.openSession();
        org.hibernate.Transaction tx = session.beginTransaction();

    }

    public List<Category> getCategoria() {
        List<Category> Categorias;
        Query q = session.createQuery("from Category as category");
        Categorias = (List<Category>) q.list();
        return Categorias;
    }

    public List<Store> getTienda() {
        List<Store> Tienda;
        Query q = session.createQuery("from Store as store");
        Tienda = (List<Store>) q.list();
        return Tienda;
    }

    public List<Store> getTiendaDatos() {
        List<Store> Tienda;
        Query q = session.createQuery("from Store as store");
        Tienda = (List<Store>) q.list();
        return Tienda;
    }

    public List<Film> getListaPeliculas(String valor) {
        List<Film> Categorias;
        Query q = session.createQuery("from Film as f where film_id='"+valor+"'");
        Categorias = (List<Film>) q.list();
        return Categorias;
    }

}
