class Elevator {

double floor;
double target;
double speed = 0.02;
boolean priority;
boolean busy;

Elevator(){
    this.floor = 1;
    this.busy = false;   
}

void followTarget(){
    if(target < floor){
        busy = true;
        floor = floor - speed;
    }
    else if(target > floor){
        busy = true;
        floor = floor + speed;
    }
    else{
        busy = false;
    }

}


public static void main (String[] args){
    Elevator[] elevators;
    elevators.add(new Elevator() e1);
    Elevator e1 = new Elevator();
    Elevator e2 = new Elevator();
    Elevator e3 = new Elevator();
    deteminePriority(3);  
}


}

public void determinePriority(int target, Elevator e1, Elevator e2, Elevator e3) {
	double distance1 = Math.abs(e1.floor() - target);
	double distance2 = Math.abs(e2.floor() - target);
	double distance3 = Math.abs(e3.floor() - target);
	
	if ((distance1 < distance2) && (distance1 < distance3) && (elevator1.busy == false)) {
		elevator1.priority = true;
        return;
	}
	
	if ((distance2 < distance3) && (distance2 < distance1) && (elevator2.busy == false)) {
		elevator2.priority = true;
        return;
	}
	
	if ((distance3 < distance2) && (distance3 < distance1) && (elevator3.busy == false)) {
		elevator3.priority = true;
        return;
	}
}


