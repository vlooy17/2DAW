package Ayudante;
// Generated 28-ene-2019 13:39:04 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Actor generated by hbm2java
 */
public class Actor  implements java.io.Serializable {


     private Short actorId;
     private String firstName;
     private String lastName;
     private Date lastUpdate;
     private Set filmActors = new HashSet(0);

    public Actor() {
    }

	
    public Actor(String firstName, String lastName, Date lastUpdate) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.lastUpdate = lastUpdate;
    }
    public Actor(String firstName, String lastName, Date lastUpdate, Set filmActors) {
       this.firstName = firstName;
       this.lastName = lastName;
       this.lastUpdate = lastUpdate;
       this.filmActors = filmActors;
    }
   
    public Short getActorId() {
        return this.actorId;
    }
    
    public void setActorId(Short actorId) {
        this.actorId = actorId;
    }
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public Date getLastUpdate() {
        return this.lastUpdate;
    }
    
    public void setLastUpdate(Date lastUpdate) {
        this.lastUpdate = lastUpdate;
    }
    public Set getFilmActors() {
        return this.filmActors;
    }
    
    public void setFilmActors(Set filmActors) {
        this.filmActors = filmActors;
    }




}


