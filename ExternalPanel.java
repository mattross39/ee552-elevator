public class ExternalPanel {
    boolean button;
    public int floor;

    ExternalPanel(int floor) {
        this.floor = floor;
    }
    void buttonPressed(boolean button){
        //? Not sure if this should be called here or in elevator
        //Elevator.findNearest();
    }
}
