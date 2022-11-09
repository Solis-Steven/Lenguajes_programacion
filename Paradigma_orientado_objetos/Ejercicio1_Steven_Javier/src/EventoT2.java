public class EventoT2 extends Eventos {
    private short entradasDisponibles;

    public EventoT2(
                    String nombreEvento, 
                    String lugarEvento,
                    short entradasDisponibles) {
    
        super(nombreEvento, lugarEvento);
        this.entradasDisponibles = entradasDisponibles;
    }

    public void setEntradasDisponibles(short nuevaCantidad) {

        this.entradasDisponibles = nuevaCantidad;
    }

    @Override
    public String toString() {
        return "Lugar: "+getNombreEvento() +", " +"lugar: "+getLugarEvento() + ", entradas " + entradasDisponibles;
    }
}