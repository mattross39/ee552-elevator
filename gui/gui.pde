Elevator elevator1;
Elevator elevator2;
Elevator elevator3;
Outside_Button obutton1;
Outside_Button obutton2;
Outside_Button obutton3;
Inside_Button ibutton1;
Inside_Button ibutton2;
Inside_Button ibutton3;
Inside_Button ibutton4;
Inside_Button ibutton5;
Inside_Button ibutton6;
Inside_Button ibutton7;
Inside_Button ibutton8;
Inside_Button ibutton9;

public double target1;
public double target2;
public double target3;

void setup() {
  size(800, 800);
  elevator1 = new Elevator(width/4*1);
  elevator2 = new Elevator(width/4*2);
  elevator3 = new Elevator(width/4*3);
  obutton1 = new Outside_Button(width/5*1-40,height/4-60,15,35);
  obutton2 = new Outside_Button(width/5*1-40,height/4*2-60,15,35);
  obutton3 = new Outside_Button(width/5*1-40,height/4*3-60,15,35);
  ibutton1 = new Inside_Button(width/4*1+5,625,35,35);
  ibutton2 = new Inside_Button(width/4*1+5,645,35,35);
  ibutton3 = new Inside_Button(width/4*1+5,665,35,35);
  ibutton4 = new Inside_Button(width/4*2+5,625,35,35);
  ibutton5 = new Inside_Button(width/4*2+5,645,35,35);
  ibutton6 = new Inside_Button(width/4*2+5,665,35,35);
  ibutton7 = new Inside_Button(width/4*3+5,625,35,35);
  ibutton8 = new Inside_Button(width/4*3+5,645,35,35);
  ibutton9 = new Inside_Button(width/4*3+5,665,35,35);
  
}

void draw() {
  background(255);
  line(0,height/4,width,height/4);
  line(0,height/4*2,width,height/4*2);
  line(0,height/4*3,width,height/4*3);
  elevator1.draw();
  elevator2.draw();
  elevator3.draw();
  obutton1.draw();
  obutton2.draw();
  obutton3.draw();
  
  //this section draws the inside panels
  fill(200);
    rect(width/4*1-25, 630, 100, 100);
    rect(width/4*2-25, 630, 100, 100);
    rect(width/4*3-25, 630, 100, 100);
    fill(0);
    text("Floor: " + elevator1.floor(), width/4*1, 650);
    text("Floor: " + elevator2.floor(), width/4*2, 650);
    text("Floor: " + elevator3.floor(), width/4*3, 650);
    text("1",width/4*1+10, 675);
    text("2",width/4*1+10, 695);
    text("3",width/4*1+10, 715);
    text("1",width/4*2+10, 675);
    text("2",width/4*2+10, 695);
    text("3",width/4*2+10, 715);
    text("1",width/4*3+10, 675);
    text("2",width/4*3+10, 695);
    text("3",width/4*3+10, 715);
    ibutton1.draw();
    ibutton2.draw();
    ibutton3.draw();
    ibutton4.draw();
    ibutton5.draw();
    ibutton6.draw();
    ibutton7.draw();
    ibutton8.draw();
    ibutton9.draw();
    
  
  //checks to turn off buttons
  if(elevator1.floor == 100 || elevator2.floor == 100 || elevator3.floor == 100 && obutton1.on == true){
        obutton1.on = false;
  }
  else if(elevator1.floor == 300 || elevator2.floor == 300 || elevator3.floor == 300 && obutton2.on == true){
        obutton2.on = false;
  }
  else if(elevator1.floor == 500 || elevator2.floor == 500 || elevator3.floor == 500 && obutton3.on == true){
        obutton3.on = false;
  }
}

void mousePressed(){
    if(obutton1.isClicked()){
     obutton1.on = true;
       if (elevator1.busy == false){
       elevator1.target = 100;
       }
       else if(elevator2.busy == false){
       elevator2.target = 100;
       }
       else if(elevator3.busy == false){
       elevator3.target = 100;
       }
 
    }
    else if(obutton2.isClicked()){
     obutton2.on = true;
      if (elevator1.busy == false){
       elevator1.target = 300;
       }
       else if(elevator2.busy == false){
       elevator2.target = 300;
       }
       else if(elevator3.busy == false){
       elevator3.target = 300;
       }
       
    }
    else if(obutton3.isClicked()){
     obutton3.on = true;
     if (elevator1.busy == false){
       elevator1.target = 500;
       }
       else if(elevator2.busy == false){
       elevator2.target = 500;
       }
       else if(elevator3.busy == false){
       elevator3.target = 500;
       }
 
    }
 
    if(ibutton1.isClicked()){
     ibutton1.on = true;
    }
    else if(ibutton2.isClicked()){
     ibutton2.on = true;
    }
    else if(ibutton3.isClicked()){
     ibutton3.on = true;
    }
    else if(ibutton4.isClicked()){
     ibutton4.on = true;
    }
    else if(ibutton5.isClicked()){
     ibutton5.on = true;
    }
    else if(ibutton6.isClicked()){
     ibutton6.on = true;
    }
    else if(ibutton7.isClicked()){
     ibutton7.on = true;
    }
    else if(ibutton8.isClicked()){
     ibutton8.on = true;
    }
    else if(ibutton9.isClicked()){
     ibutton9.on = true;
    }
    
    
}
