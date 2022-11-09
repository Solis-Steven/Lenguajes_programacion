public class EventoT1 extends Eventos {
    private String fechaEvento;

    public EventoT1(
                    String nombreEvento, 
                    String lugarEvento, 
                    String fechaEvento) {

        super(nombreEvento, lugarEvento);
        this.fechaEvento = fechaEvento;
    }

    public void setFechaEvento(String nuevaFecha) {

        this.fechaEvento = nuevaFecha;
    }

    @Override
    public String toString() {
        return "Lugar: "+getNombreEvento() +", " +"lugar: "+getLugarEvento() + ", fecha " + fechaEvento;
    }

}