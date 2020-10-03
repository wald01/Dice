Die bob = new Die(30,50);

void setup()
{
  size(500,500);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw()
{
  //your code here
  int addX2 = 0;
  int addY2 = 0;
  clear();
  
  //square(30,20,55);
  for(int i = 0; i < 3; i++){
      for(int j = 0; j<3; j++){
      bob.show(addX2,addY2);
      addX2 += 95;
      }
      addX2 = 0;
      addY2 += 95;
  }
  //   akfaefaefasedfa += xxxx }
  //    
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
  int num = 1;
  int result = 0; //for testing
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
    square(myX+addX,myY+addY,80); //+55 for x and y
    num = (int)(Math.random()*6)+1;
    switch (num) {
    case 1:
      result += 1;
      System.out.println(result);
      break;
    case 2:
      result += 2;
      System.out.println(result);
      break;
    case 3:
       result += 3;
       System.out.println(result);
       break;
    case 4:
      result += 4;
      System.out.println(result);
      break;
    case 5:
      result += 5;
      System.out.println(result);
      break;
    case 6:
      result += 6;
      System.out.println(result);
      break;
    }
    //switch (num){
    // case 1:
       //point(myX+25, myY+50);
      
      //  break;
    //}
}
}
