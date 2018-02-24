Blokje b1 = new Blokje(10,10,10,10);
Blokje b2 = new Blokje(10,10,10,10);


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
  int w;
  int h;
  
  Blokje(int X, int Y, int W, int H){
    x = X;
    y = Y;    
    w = W;
    h = H;
  }
  
  void update(){
    
     if(mousePressed == true && mouseButton == LEFT){
      clear();
      background(204);
      x++;
      y++;
      rect(x,y,w,h);
     }
     
     if(mousePressed == true && mouseButton == RIGHT){
       clear();
       background(204);
       w++;
       h++;
       rect(x,y,w,h);      
     }
     
     if(keyPressed == true && key == 'r'){
     
     }
  }
}