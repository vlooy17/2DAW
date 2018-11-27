/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Alimentos;

/**
 *
 * @author alumno_2DAW
 */
public class Alimentos {
    
    String NombreAlimeto;
    double lip,hid,prot;
    Boolean OrAnimal;
    String ContMineral,ContVitamina;

    public Alimentos() {
    }

    public Alimentos(String NombreAlimeto, double lip, double hid, double prot, Boolean OrAnimal, String ContMineral, String ContVitamina) {
        setNombreAlimeto(NombreAlimeto);
        setLip(lip);
        setHid(hid);
        setProt(prot);
        setOrAnimal(OrAnimal);
        setContMineral(ContMineral);
        setContVitamina(ContVitamina);
    }

    public String getNombreAlimeto() {
        return NombreAlimeto;
    }

    public void setNombreAlimeto(String NombreAlimeto) {
        this.NombreAlimeto = NombreAlimeto;
    }

    public double getLip() {
        return lip;
    }

    public void setLip(double lip) {
        this.lip = lip;
    }

    public double getHid() {
        return hid;
    }

    public void setHid(double hid) {
        this.hid = hid;
    }

    public double getProt() {
        return prot;
    }

    public void setProt(double prot) {
        this.prot = prot;
    }

    public Boolean getOrAnimal() {
        return OrAnimal;
    }

    public void setOrAnimal(Boolean OrAnimal) {
        this.OrAnimal = OrAnimal;
    }

    public String getContMineral() {
        return ContMineral;
    }

    public void setContMineral(String ContMineral) {
        this.ContMineral = ContMineral;
    }

    public String getContVitamina() {
        return ContVitamina;
    }

    public void setContVitamina(String ContVitamina) {
        this.ContVitamina = ContVitamina;
    }
    
    

   

    @Override
    public String toString() {
        return "Alimentos{" + "NombreAlimeto=" + NombreAlimeto + ", lip=" + lip + ", hid=" + hid + ", prot=" + prot + ", OrAnimal=" + OrAnimal + ", ContMineral=" + ContMineral + ", ContVitamina=" + ContVitamina + '}';
    }
    
    
    
}
