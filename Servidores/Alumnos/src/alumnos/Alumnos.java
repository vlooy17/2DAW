package alumnos;

import Datos.datos;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Alumnos {

    public static void main(String[] args) {
        int matricula = 0;
        String nombre;
        double nota1;
        double nota2;
        boolean salir = false;
        double media = 0;
        double acu = 0;

        ArrayList<datos> listado = new ArrayList<datos>();
        Scanner sc = new Scanner(System.in);

        do {
            System.out.println("Programa de gestion");
            System.out.print("Introduzca numero de matricula(< 0 finalizar)");
            matricula = sc.nextInt();
            sc = new Scanner(System.in);

            salir = true;
            if (matricula > 0) {
                System.out.print("Introduzca el nombre: ");
                nombre = sc.nextLine();
                sc = new Scanner(System.in);
                System.out.print("Introduzca la primera nota: ");
                nota1 = sc.nextDouble();
                sc = new Scanner(System.in);
                System.out.print("Introduzca la segunda nota: ");
                nota2 = sc.nextDouble();
                datos dat = new datos(matricula, nombre);

                dat.ponNota(nota1, nota2);
                dat.dameMedia();

                listado.add(dat);

            } else {
                for (int i = 0; i < listado.size(); i++) {

                    System.out.println(listado.get(i).MuestraAlumno());
                    media = listado.get(i).getMedia();
                    acu = acu + media;
                }
                System.out.println("La media es: " + acu / listado.size());
                System.out.println("FIN DEL PROGRAMA");
                salir = false;
            }

        } while (salir);

    }

}
