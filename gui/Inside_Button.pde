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
    fill(150);
    circle(leftPos+btnWidth/2,topPos+btnHeight/2,btnWidth-5);
      
    } else {
    fill(255);
    circle(leftPos+btnWidth/2,topPos+btnHeight/2,btnWidth-5); 
    
  }
}
}
