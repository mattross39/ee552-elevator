Elevator elevator1;
Elevator elevator2;
Elevator elevator3;
double target1 = 100;
double target2 = 300;
double target3 = 500;

void setup() {
  size(800, 800);
  elevator1 = new Elevator(width/4*1,target1);
  elevator2 = new Elevator(width/4*2,target2);
  elevator3 = new Elevator(width/4*3,target3);
}

void draw() {
  background(255);
  line(0,height/4,width,height/4);
  line(0,height/4*2,width,height/4*2);
  line(0,height/4*3,width,height/4*3);
  elevator1.draw();
  elevator2.draw();
  elevator3.draw();
  
}
