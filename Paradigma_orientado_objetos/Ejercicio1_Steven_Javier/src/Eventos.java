abstract public class Eventos {
    private String nombreEvento;
    private String lugarEvento;

    public Eventos(String nombreEvento, String lugarEvento) {
        this.nombreEvento = nombreEvento;
        this.lugarEvento = lugarEvento;
    }

    public String getNombreEvento() {
        return this.nombreEvento;
    }
    public String getLugarEvento() {
        return lugarEvento;
    }
    public void setNombreEvento(String nuevoNombre) {

        this.nombreEvento = nuevoNombre;
    }

    public void setLugarEvento(String nuevoLugar) {

        this.lugarEvento = nuevoLugar;
    }

    public void setFechaEvento(String nuevaFecha) {}

    public void setEntradasDisponibles(short nuevaCantidad) {}

}
