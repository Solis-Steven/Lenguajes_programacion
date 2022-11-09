import java.util.*;

/**
 *
 * @author Steven Solis
 * @author Javier Garcia
 */
public class Agenda {

    private ArrayList<Contactos> listaContactos  = new ArrayList<>();
    private ArrayList<Eventos> listaEventos = new ArrayList<>();

    public void agregarContacto(ContactoT1 contacto) {
        
        listaContactos.add(contacto);
    }

    public void agregarContacto(ContactoT2 contacto) {

        listaContactos.add(contacto);
    }

    public void eliminarContacto(String nombreContacto) {

        for(Contactos contacto : this.listaContactos) {
            if(contacto.getPersona().getNombre().equals(nombreContacto)) {
                this.listaContactos.remove(contacto);
            }
        }
    }

    public void modificarContacto(
                                  String nombreContacto, 
                                  int nuevoNumero, 
                                  Personas nuevaPersona) {

        for(Contactos contacto : this.listaContactos) {
            if(contacto.getPersona().getNombre().equals(nombreContacto)) {
                contacto.setPersona(nuevaPersona);
                contacto.setNumeroTelefono(nuevoNumero);
            }
        }
    }

    public void modificarContacto(
                                  String nombreContacto, 
                                  String nuevoCorreo, 
                                  Personas nuevaPersona) {

        for(Contactos contacto : this.listaContactos) {
            if(contacto.getPersona().getNombre().equals(nombreContacto)) {
                contacto.setPersona(nuevaPersona);
                contacto.setCorreo(nuevoCorreo);
            }
        }
    }

    public void agregarEvento(EventoT1 evento) {

        listaEventos.add(evento);
    }
    
    public void agregarEvento(EventoT2 evento) {

        listaEventos.add(evento);
    }

    public void eliminarEvento(String nombreEvento) {

        for(Eventos evento : this.listaEventos) {
            if(evento.getNombreEvento().equals(nombreEvento)) {
                this.listaEventos.remove(evento);
            }
        }
    }
        
    public void modificarEvento(
                                String nombreEvento, 
                                String nuevoNombre, 
                                String nuevoLugar,
                                String nuevaFecha) {

        for(Eventos evento : this.listaEventos) {
            if(evento.getNombreEvento().equals(nombreEvento)) {
                evento.setNombreEvento(nuevoNombre);
                evento.setLugarEvento(nuevoLugar);
                evento.setFechaEvento(nuevaFecha);
            }
        }
    }

    public void modificarEvento(
                                String nombreEvento, 
                                String nuevoNombre, 
                                String nuevoLugar,
                                short nuevaCantidad) {

        for(Eventos evento : this.listaEventos) {
            if(evento.getNombreEvento().equals(nombreEvento)) {
                evento.setNombreEvento(nuevoNombre);
                evento.setLugarEvento(nuevoLugar);
                evento.setEntradasDisponibles(nuevaCantidad);
            }
        }
    }
    public void ImprimirContactos(){
        for(int i = 0; i < this.listaContactos.size();i++){
            System.out.println(this.listaContactos.get(i).toString());
        }
            
    }
    public void ImprimirEvetos(){
        for(int i = 0; i < this.listaEventos.size();i++){
            System.out.println(this.listaEventos.get(i).toString());
        }
            
    }

}