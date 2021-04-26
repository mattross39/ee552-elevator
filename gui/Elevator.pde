class Elevator {
 private int x;
 private int speed;
 private double target;
 private double floor = 500;
 //floor3 = 100;
 //floor2 = 300;
 //floor1 = 500;
 private boolean busy = false;
 
 Elevator(int x,double target){
   this.x = x;
   this.speed = 5;
   this.target = target;
 }
 
 void draw(){
    if (target < floor){
            busy = true;
            floor = floor - speed; 
        } else if (target > floor) {
            busy = true;
            floor = floor + speed;
        } else {
            busy = false;
        }
    
    fill(200);
    rect(x+0,(float)floor+20, 24, 80);
    rect(x+24,(float)floor+20, 24, 80);
    
 }
}
