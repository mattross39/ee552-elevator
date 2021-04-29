class Elevator {
 private int x;
 private int speed;
 public double target = 500;
 private double floor = 500;
 public boolean busy = false;
 
 Elevator(int x){
   this.x = x;
   this.speed = 5;
 }
 
 int floor(){
  if(floor < 150){
      return 3;
    }
    else if(floor >= 150 && floor <350){
      return 2;
    }
    else{
      return 1;
    }
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