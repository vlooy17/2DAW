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
    
    public List<Film> getFilm(int tramo) {
        List<Film> pelis;
        Query q = session.createQuery("from Film as fi").setFirstResult(tramo).setMaxResults(10);
        pelis = (List<Film>) q.list();
        return pelis;
    }
    
    public List<Film> getFilm2() {
        List<Film> pelis;
        Query q = session.createQuery("from Film as fi");
        pelis = (List<Film>) q.list();
        return pelis;
    }

    public List<Store> getTienda() {
        List<Store> Tienda;
        Query q = session.createQuery("from Store as store");
        Tienda = (List<Store>) q.list();
        return Tienda;
    }

    public List<Customer> getClientes() {
        List<Customer> Tienda;
        Query q = session.createQuery("from Customer as cos");
        Tienda = (List<Customer>) q.list();
        return Tienda;
    }

    public List<Customer> getClientes2(String id) {
        List<Customer> Tienda;
        Query q = session.createQuery("from Customer as cos where cos.customerId=" + id + "");
        Tienda = (List<Customer>) q.list();
        return Tienda;
    }

    public List<Store> getTiendaDatos() {
        List<Store> Tienda;
        Query q = session.createQuery("from Store as store");
        Tienda = (List<Store>) q.list();
        return Tienda;
    }


    public List<Rental> getListado1(String videoclub, String cliente, int tramo) {
        Query q = session.createQuery("FROM Rental as r where r.customer.customerId=" + cliente + " " + "AND r.staff.store.storeId = " + videoclub).setFirstResult(tramo).setMaxResults(10);
        List<Rental> alquiler = (List<Rental>) q.list();
        return alquiler;
    }

    public long getTotal(String customerId, String staffId, String fecha1, String fecha2) {
        Query q = session.createQuery("SELECT sum(p.amount) FROM Payment as p"
                + " WHERE p.customer = " + customerId + " "
                + " AND p.staff= " + staffId + " "
                + " AND p.paymentDate > ='" + fecha1 + "' AND"
                + " p.paymentDate <='" + fecha2 + "' "
                + "GROUP BY p.customer");

        long total = (long) q.list().get(0);

        return total;

    }

    public List<Payment> getClientesVideoclub(String id) {
        List<Payment> Tienda;
        Query q = session.createQuery(" FROM Payment as ps  where ps.staff=" + id + " group by ps.customer");
        Tienda = (List<Payment>) q.list();
        return Tienda;
    }

    public long getTotalClientes(String staffId, String customerId) {
        Query q = session.createQuery("SELECT sum(p.amount) FROM Payment as p WHERE p.staff=" + staffId + " AND p.customer=" + customerId + " GROUP BY p.customer");
        long totalC = (long) q.list().get(0);

        return totalC;

    }

    public List<Customer> getClientesVC(String id, int tramo) {
        List<Customer> Tienda;
        Query q = session.createQuery("from Customer as cos where cos.store=" + id + "").setFirstResult(tramo).setMaxResults(10);
        Tienda = (List<Customer>) q.list();
        return Tienda;
    }

    public long getAlquiladas(String idFilm,String idStore) {
        long total2 = 0;
        Query q = session.createQuery("Select count(re.inventory.inventoryId)from Rental as re "
                + "Where  re.inventory.inventoryId in "
                + "(SELECT it.inventoryId from  Inventory as it where it.store.storeId="+idStore+" and it.film.filmId="+idFilm+") "
                + "group by re.inventory.inventoryId");
         for(int i=0;i<q.list().size();i++){
             long n= (long) q.list().get(i);
             total2 = total2 + n;
         }
        return total2;
    }
    
    public List<Actor> getActores(String idFilm) {
        List<Actor> actores;
        Query q = session.createQuery("select fa.actor from FilmActor as fa where fa.film.filmId="+idFilm);
        actores = (List<Actor>) q.list();
        return actores;
    }

}
 
