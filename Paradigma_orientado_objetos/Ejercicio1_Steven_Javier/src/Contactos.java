abstract public class Contactos {
    private Personas persona;

    public Contactos(Personas persona) {
        this.persona = persona;
    }

    public Personas getPersona() {
        return this.persona;
    }

    public void setPersona(Personas persona) {
        this.persona = persona;
    }

    public void setNumeroTelefono(int nuevoNumero) {}

    public void setCorreo(String nuevoCorreo) {}
    
}
