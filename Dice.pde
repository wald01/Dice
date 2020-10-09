Die bob = new Die(30,50);

void setup()
{
  size(330,500);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw()
{
  //your code here
  //rect(0,0,330,500); //
  int addX2 = 0;
  int addY2 = 0;

  //clear();
  textSize(32);

  for(int i = 0; i < 3; i++){
      for(int j = 0; j<3; j++){
      bob.show(addX2,addY2);
      //bob.showResult();
      addX2 += 95;
      }
      addX2 = 0;
      addY2 += 95;
  } 
  
  bob.showResult();
}
void mousePressed()
{
  //clear();
  bob.resetResult();
  fill(205);
  redraw();
  
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
  int num = 1;
  int result = 0;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;

    
  }
  void roll()
  {
    //your code here
    num = (int)(Math.random()*6)+1;

    }
  
  void show(int addX, int addY){
    //your code here
    fill(205);
    stroke(0);
    rect(myX+addX,myY+addY,80,80); //square does not work on github
    num = (int)(Math.random()*6)+1;
    switch (num) {
    case 1:
      result += 1;
      //System.out.println(result);
      fill(40);
      ellipse(myX+40+addX,myY+40+addY ,10,10);
      break;
    case 2:
      result += 2;
      //System.out.println(result);
      fill(40);
      ellipse(myX+addX+60,myY+addY+20,10,10);
      ellipse(myX+addX+20,myY+addY+60,10,10);
      break;
    case 3:
       result += 3;
       //System.out.println(result);
       fill(40);
       ellipse(myX+40+addX,myY+40+addY,10,10);
       ellipse(myX+addX+60,myY+addY+20,10,10);
       ellipse(myX+addX+20,myY+addY+60,10,10);
       break;
    case 4:
      result += 4;
      //System.out.println(result);
      fill(40);
      ellipse(myX+addX+60,myY+addY+20,10,10);
      ellipse(myX+addX+20,myY+addY+60,10,10);
      ellipse(myX+addX+20,myY+addY+20,10,10);
      ellipse(myX+addX+60,myY+addY+60,10,10);
      break;
    case 5:
      result += 5;
      //System.out.println(result);
      fill(40);
      ellipse(myX+40+addX,myY+40+addY ,10,10);
      ellipse(myX+addX+60,myY+addY+20,10,10);
      ellipse(myX+addX+20,myY+addY+60,10,10);
      ellipse(myX+addX+20,myY+addY+20,10,10);
      ellipse(myX+addX+60,myY+addY+60,10,10);
      break;
    case 6:
      result += 6;
      //System.out.println(result);
      fill(40);
      ellipse(myX+60+addX,myY+65+addY ,10,10);
      ellipse(myX+addX+60,myY+addY+15,10,10);
      ellipse(myX+addX+20,myY+addY+65,10,10);
      ellipse(myX+addX+20,myY+addY+15,10,10);
      ellipse(myX+addX+20,myY+addY+40,10,10);
      ellipse(myX+addX+60,myY+addY+40,10,10);
      break;
    }
}
void showResult(){
  //System.out.println(result);
  fill(205);
  stroke(205);
  rect(10,350,400,100);
  fill(40);
  text("Dots: "+result, 150,400);
  
}
void resetResult(){
  result = 0;

}
}
