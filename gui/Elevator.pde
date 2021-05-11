import java.util.Queue;
import java.util.LinkedList;

class Elevator {
 private int x;
 private int speed;
 public double target = 500;
 private double floor = 500;
 public boolean busy = false;
 private int timer = 0;
 boolean alreadyPlayed = false;
 boolean up = false;
 boolean down = false;
 Queue<Integer> q = new LinkedList<Integer>();
 
 
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
   
   
   if (q.peek() != null) {
      target = q.element(); 
      
      if (target < floor){
        up = true;
        busy = true;
        floor = floor - speed;
        alreadyPlayed = false;
        
        
      } else if (target > floor) {
        down = true;
        busy = true;
        floor = floor + speed;
        alreadyPlayed = false;
        
      } else{
          //busy = false;
          down = false;
          up = false;
          timer = timer + 1;
          
          if(timer == 100){
            timer = 0;
            busy = false;
            q.remove();
          }
          
          if(alreadyPlayed == false){
          file[0].play();
          alreadyPlayed = true;
          }
        }
   }
 
   

      
    fill(200);
    rect(x+0,(float)floor+20, 24, 80);
    rect(x+24,(float)floor+20, 24, 80);
    
 }
 
}
