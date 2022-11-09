public class Personas {
    private String nombre;
    private String apellido1;
    private String apellido2;
    private byte edad;
    private String genero;

    public Personas(String nombre,
                    String apellido1,
                    String apellido2,
                    byte edad,
                    String genero) {

        this.nombre = nombre;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.edad = edad;
        this.genero = genero;
    }

    public String getNombre() {
        return this.nombre;
    }

    public String toString() {
        return "nombre: " + nombre + ", primer pellido: " + apellido1 
                + ", segundo apellido: " + apellido2 + ", edad: " + edad
                + ", genero: " + genero + ", ";
    }
    
}