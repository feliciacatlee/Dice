void setup()
{
  size(400, 400);
  textAlign(CENTER, CENTER);
  noLoop();
}

int myRoll;

void draw()
{
  background(20);
  int total = 0;
  
  for (int y = 25; y < 400; y += 75)
  {
    for (int x = 25; x < 400; x += 75)
    {
      Die one = new Die(x, y);
      one.show();
      total += myRoll;
    }
  }
  textSize(200);
  fill(255, 255, 255, (int)(total*3)-50);
  text ((int)(total), 200, 180);
}

void mousePressed()
{
  redraw();
}

class Die
{
  int myX, myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
 
  void roll()
  {
    myRoll = (int)(Math.random()*6 + 1);
  }
 
  void show()
  {
    noStroke();
    fill(240, 0, 0);
    rect(myX, myY, 50, 50);
   
    fill(255);
    if (myRoll == 1)
      ellipse(myX + 25, myY + 25, 10, 10);
    else if (myRoll == 2){
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    }
    else if (myRoll == 3){
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    }
    else if (myRoll == 4){
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
    }
    else if (myRoll == 5){
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
    }
    else{
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
    }
  }
}
