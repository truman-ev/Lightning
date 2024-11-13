PImage img;

int startX = 100; //this value changes starting point
int startY = mouseY+14;
int endX = 100;
int endY = mouseY+14;
void setup()
{
  size(300,300);
  strokeWeight(3);
  background(6, 17, 33);
  img = loadImage("alien.png");
}
void draw()
{
 
  noStroke();
  fill(199, 14, 14);
  quad(34,mouseY+30, 39,mouseY+30, 41,mouseY+40, 33,mouseY+40); //trigger     //165, 165, 175, 175
  fill(117); //gray
  rect(10, mouseY, 65, 30, 30, 0, 0, 30); //barrel   //135
  quad(18,mouseY+25, 38,mouseY+25, 28,mouseY+55, 13, mouseY+55); //grip  //160, 160, 190, 190
  fill(199, 14, 14); //red
  ellipse(70, mouseY+15, 5, 35);     //red lines   //150
  ellipse(63, mouseY+15, 5, 35); 
  ellipse(56, mouseY+15, 5, 35); 
  triangle(75,mouseY+5,100,mouseY+15,75,mouseY+25); //tip     //140, 150, 160
  ellipse(20,mouseY+15,7,7);  //button     //150
  fill(6, 17, 33,50); //color, color, color, opacity
  rect(0,0,300,300); //rectangle that covers up the lightning
  stroke((int)(Math.random()*210), 235, 255);
  while(endX<300){
    endX = startX + (int)(Math.random()*50); //10 because *9 would not include 9
    endY = startY + (int)((Math.random()*50)-25); //increasing final value in parenthesis increases each section length
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  img.resize(200,300);
  image(img, 140, 0);
}
void mousePressed()
{
  startX = 100;
  startY = mouseY+14;
  endX = 100;
  endY = mouseY+14;
}
