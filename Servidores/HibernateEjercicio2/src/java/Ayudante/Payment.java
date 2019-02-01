package Ayudante;
// Generated 18-ene-2019 9:42:46 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Payment generated by hbm2java
 */
public class Payment  implements java.io.Serializable {


     private Short paymentId;
     private Customer customer;
     private Rental rental;
     private Staff staff;
     private short amount;
     private Date paymentDate;
     private Date lastUpdate;

    public Payment() {
    }

	
    public Payment(Customer customer, Staff staff, short amount, Date paymentDate, Date lastUpdate) {
        this.customer = customer;
        this.staff = staff;
        this.amount = amount;
        this.paymentDate = paymentDate;
        this.lastUpdate = lastUpdate;
    }
    public Payment(Customer customer, Rental rental, Staff staff, short amount, Date paymentDate, Date lastUpdate) {
       this.customer = customer;
       this.rental = rental;
       this.staff = staff;
       this.amount = amount;
       this.paymentDate = paymentDate;
       this.lastUpdate = lastUpdate;
    }
   
    public Short getPaymentId() {
        return this.paymentId;
    }
    
    public void setPaymentId(Short paymentId) {
        this.paymentId = paymentId;
    }
    public Customer getCustomer() {
        return this.customer;
    }
    
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    public Rental getRental() {
        return this.rental;
    }
    
    public void setRental(Rental rental) {
        this.rental = rental;
    }
    public Staff getStaff() {
        return this.staff;
    }
    
    public void setStaff(Staff staff) {
        this.staff = staff;
    }
    public short getAmount() {
        return this.amount;
    }
    
    public void setAmount(short amount) {
        this.amount = amount;
    }
    public Date getPaymentDate() {
        return this.paymentDate;
    }
    
    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }
    public Date getLastUpdate() {
        return this.lastUpdate;
    }
    
    public void setLastUpdate(Date lastUpdate) {
        this.lastUpdate = lastUpdate;
    }




}


