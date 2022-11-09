public class ContactoT1 extends Contactos {
    private int numeroTelefono;

    public ContactoT1(Personas persona, int numeroTelefono) {
        super(persona);
        this.numeroTelefono = numeroTelefono;
    }
    
    /** Getters */
    public int getNumeroTelefono() {
        return numeroTelefono;
    }

    public void setNumeroTelefono(int nuevoNumero) {
        this.numeroTelefono = nuevoNumero;
    }
    @Override
    public String toString() {
        return getPersona().toString() + "numero telefono: " + numeroTelefono;
    }
}
