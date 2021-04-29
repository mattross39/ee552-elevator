class Inside_Button{
  float leftPos;
  float topPos;
  float btnWidth;
  float btnHeight;
  boolean on = false;
  
  Inside_Button(float leftPos, float topPos, float btnWidth, float btnHeight){
    this.leftPos = leftPos;
    this.topPos = topPos;
    this.btnWidth = btnWidth;
    this.btnHeight = btnHeight;
  }
  
  boolean isClicked(){
    return (mouseX > leftPos && mouseY > topPos && mouseX < leftPos + btnWidth &&
    mouseY < topPos + btnHeight);
  }
    
  
  void draw(){
    if(on == true){
    fill(200);
    circle(leftPos-10,topPos+45,btnWidth-20);
      
    } else {
    fill(255);
    circle(leftPos-10,topPos+45,btnWidth-20); 
    }
    
  }
}