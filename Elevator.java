import java.util.*;

class Elevator {

    int floor;
    int target;
    double speed = 0.02;
    boolean priority;
    boolean busy;

    Elevator(int floor){
        this.floor = floor;
        this.busy = false;   
    }

    /* FOR PROCESSING DRAW FUNCTION
    void followTarget() {
        if (target < floor){
            busy = true;
            floor = floor - speed; 
        } else if (target > floor) {
            busy = true;
            floor = floor + speed;
        } else {
            busy = false;
        }
    } 
    */ 

    public static void main (String[] args){
        List<Elevator> elevators = new ArrayList<>();
        elevators.add(new Elevator(1));
        elevators.add(new Elevator(4));
        elevators.add(new Elevator(2)); 
    }


    // Will call closest elevator to desired floor
    public static Elevator findNearest (List<Elevator> elevators, int current) {
        int minDistance = 100; //Hardcoded just for now, will fix later
        Elevator nearestElevator = null;

        for (Elevator e : elevators) {
            int distance = Math.abs(e.floor - current);
            if (distance < minDistance) {
                minDistance = distance;
                nearestElevator = e;
            }
        }
        
        //TODO: check for moving elevators to set priority

        return nearestElevator;
    }
}

