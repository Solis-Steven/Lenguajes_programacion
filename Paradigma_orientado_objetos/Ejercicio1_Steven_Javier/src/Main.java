

public class Main {
    public static void main(String[] args) {
        Agenda agenda1 = new Agenda();
        Agenda agenda2 = new Agenda();

        Personas persona1 = new Personas("Steven",
                                      "Solis",
                                      "Obando",
                                                (byte) 19,
                                        "masculino");

        Personas persona2 = new Personas("Carlos",
                                        "Solis",
                                        "Obando",
                                                  (byte) 23,
                                          "masculino");

        // Contactos de la primera persona
        ContactoT1 contacto1P1 = new ContactoT1(persona1, 83566753);
        ContactoT2 contacto2P1 = new ContactoT2(persona1, "kp07761@gmail.com");
    
        // Contactos de la segunda persona
        ContactoT1 contacto1P2 = new ContactoT1(persona2, 86020380);
        ContactoT2 contacto2P2 = new ContactoT2(persona2, "caliASO@gmail.com");


        // Eventos
        EventoT1 evento1P1 = new EventoT1("Shaw", "La fortuna", "2/4/2022");
        EventoT1 evento1P2 = new EventoT1("Bad bunny", "San jose", "11/7/2022");

        EventoT2 evento2P1 = new EventoT2("Billie", "CQ", (short) 300);
        EventoT2 evento2P2 = new EventoT2("Josh", "La perla", (short) 400);
        

        agenda1.agregarEvento(evento1P1);
        agenda1.agregarEvento(evento1P2);

        agenda2.agregarEvento(evento2P1);
        agenda2.agregarEvento(evento2P2);

        agenda1.agregarContacto(contacto1P1);
        agenda1.agregarContacto(contacto1P2);

        agenda2.agregarContacto(contacto2P1);
        agenda2.agregarContacto(contacto2P2);

        agenda1.ImprimirContactos();
        System.out.println("");
        agenda2.ImprimirContactos();
        System.out.println("-----------------------------------------------------------------------");
        agenda1.ImprimirEvetos();
        System.out.println("");
        agenda2.ImprimirEvetos();
                
        

    }
    
}
