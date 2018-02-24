Blokje b1 = new Blokje(10,10);
Blokje b2 = new Blokje(10,10);


void setup(){
  size(200,200);
  background(204);
  stroke(255,0,0);
  fill(255,0,0);
  frameRate(30);
}

void draw(){
  

    b1.update();
    b2.update();
  }


class Blokje{
  int x;
  int y;
  
  Blokje(int X, int Y){
    x = X;
    y = Y;    
  }
  
  void update(){
    if(mousePressed == true && mouseButton == LEFT){
      clear();
      background(204);
      x++;
      y++;
      rect(x,y,10,10);
    }
     if(mousePressed == true && mouseButton == RIGHT){
       
     }
  }
}