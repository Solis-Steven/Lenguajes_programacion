public class ContactoT2 extends Contactos {
    private String correo;

    public ContactoT2(Personas persona, String correo) {
        super(persona);
        this.correo = correo;
    }

    public void setCorreo(String nuevoCorreo) {
        this.correo = nuevoCorreo;
    }
    @Override
    public String toString() {
        return getPersona().toString() + "correo: " + correo;
    }
}
