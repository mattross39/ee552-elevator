class Elevator {
 private int x;
 private int speed;
 public double target = 500;
 private double floor = 500;
 public boolean busy = false;
 private int timer = 0;
 boolean alreadyPlayed = false;
 
 Elevator(int x){
   this.x = x;
   this.speed = 1;
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
            alreadyPlayed = false;
            
        } else if (target > floor) {
            busy = true;
            floor = floor + speed;
            alreadyPlayed = false;
            
        } else{
          //busy = false;
              timer = timer + 1;
              
              if(timer == 100){
                timer = 0;
                busy = false;
              }
              
              if(alreadyPlayed == false){
              file[0].play();
              alreadyPlayed = true;
              }
        }

    
    fill(200);
    rect(x+0,(float)floor+20, 24, 80);
    rect(x+24,(float)floor+20, 24, 80);
    
 }
 
}
