/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDatos;

/**
 *
 * @author alumno_2DAW
 */
public class Libro {

    private int codigo;
    private String titulo;
    private String autor;
    private String fecha;
    private String paginas;
    private String precio;

    public Libro(int codigo, String titulo, String autor, String fecha, String paginas, String precio) {
        this.codigo = codigo;
        this.titulo = titulo;
        this.autor = autor;
        this.fecha = fecha;
        this.paginas = paginas;
        this.precio = precio;
    }

   

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getPaginas() {
        return paginas;
    }

    public void setPaginas(String paginas) {
        this.paginas = paginas;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }
    
    


    
    

}
