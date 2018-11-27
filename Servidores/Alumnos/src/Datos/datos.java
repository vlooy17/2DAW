
package Datos;


public class datos {
    
    private int  matricula;
    private String nombre;
    private double nota1;
    private double nota2;
    private double media = 0;

    public datos(int matricula, String nombre) {
        this.matricula = matricula;
        this.nombre = nombre;
    }
    public void ponNota(double nota1, double nota2){
        this.nota1 = nota1;
        this.nota2 = nota2;
    }
    public double dameMedia(){
        media = (nota1+nota2)/2;
        return media;
        
    }
    
    public String MuestraAlumno(){
        String muestra = (String.valueOf(matricula)+" "+nombre+" "+"nota media "+String.valueOf(media));
        return muestra;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getNota1() {
        return nota1;
    }

    public void setNota1(double nota1) {
        this.nota1 = nota1;
    }

    public double getNota2() {
        return nota2;
    }

    public void setNota2(double nota2) {
        this.nota2 = nota2;
    }

    public double getMedia() {
        return media;
    }

    public void setMedia(double media) {
        this.media = media;
    }
    
    
}
