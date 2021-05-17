class Direction_Arrows {
  float leftPos;
  float topPos;
  boolean up = false;
  boolean down = false;
  
  Direction_Arrows(float leftPos, float topPos){
    this.leftPos = leftPos;
    this.topPos = topPos;
  }
  
  void draw() {
  fill(200);
  rect(leftPos, topPos, 20, 40);
  
  if(up == true){
    fill(150);
    triangle(leftPos, topPos+15, leftPos+10, topPos, leftPos+20, topPos+15 );
    fill(255);
    triangle(leftPos, topPos+25, leftPos+10, topPos+40, leftPos+20, topPos+25 );
  }
  else if(down == true){
    fill(150);
    triangle(leftPos, topPos+25, leftPos+10, topPos+40, leftPos+20, topPos+25 );
    fill(255);
    triangle(leftPos, topPos+15, leftPos+10, topPos, leftPos+20, topPos+15 );
  }
  else if (down == false && up == false){
    fill(255);
    triangle(leftPos, topPos+15, leftPos+10, topPos, leftPos+20, topPos+15 );
    triangle(leftPos, topPos+25, leftPos+10, topPos+40, leftPos+20, topPos+25 );
  }
  
  
  }
  
  
}
