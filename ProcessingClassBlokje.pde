Blokje b1 = new Blokje(20, 50, 10, 10);
Blokje b2 = new Blokje(10, 10, 10, 10);

void setup() {
  size(200, 200);
  background(204);
  stroke(255, 0, 0);
  fill(255, 0, 0);
  frameRate(25);
}

void draw() {    
  
  background(204);
  b1.draw();
  b2.draw();
  
  if(mousePressed == true && mouseButton == LEFT){
  b1.update();
  b2.update();
  }
  
  if(keyPressed == true && key == CODED && keyCode == UP){
  println("Richting is nu UP");   
  b1.goUp();
  b2.goUp();
  }
  
  if(keyPressed == true && key == CODED && keyCode == DOWN){
  println("Richting is nu DOWN");
  b1.goDown();
  b2.goDown();
  }
  
  if(keyPressed == true && key == CODED && keyCode == RIGHT){
  println("Richting is nu RIGHT");
  b1.goRight();
  b2.goRight();
  }
  
  if(keyPressed == true && key == CODED && keyCode == LEFT){
  println("Richting is nu LEFT");
  b1.goLeft();
  b2.goLeft();
  }
  
  if(mousePressed == true && mouseButton == RIGHT){
  b1.grow();
  b2.grow();
  }
  
  if(keyPressed == true && key == 'r'){
  b1.reset();
  b2.reset();
  }
}


class Blokje {
  int x;
  int y;
  int w;
  int h;
  int previousw;
  int previoush;
  int xRichting = 1;
  int yRichting = 1;

  Blokje(int X, int Y, int W, int H) {
    x = X;
    y = Y;    
    w = W;
    h = H;
    previousw = W;
    previoush = H;    
  }
  
  void draw(){
    rect(x,y,w,h);
  }
  void update(){  
      x += xRichting;
      y += yRichting;    
  }
  
  void grow(){
      w++;
      h++;
  }
  
  void reset(){
    w = previousw;
    h = previoush;
  }
  
  void goUp(){
    xRichting = 0;
    yRichting = -1;
  }
  
  void goDown(){
    xRichting = 0;
    yRichting = 1;
  }
  
  void goRight(){
    xRichting = 1;
    yRichting = 0;
  }
  
  void goLeft(){
    xRichting = -1;
    yRichting = 0;
  }

 /* void update() {
    rect(x, y, w, h);  
    
    if(keyPressed == true && key == CODED && (keyCode == UP || keyCode == RIGHT || keyCode == DOWN || keyCode == LEFT)){  
      println("Er is op een pijltjestoets gedrukt!");
    if (mousePressed == true && mouseButton == LEFT) {
      //clear();
      //background(204);
      x--;
      y--;
      rect(x, y, w, h);
    }
    
    } else {
    
    if (mousePressed == true && mouseButton == LEFT) {
      //clear();
      //background(204);
      x++;
      y++;
      rect(x, y, w, h);
    }
   }          

    if (mousePressed == true && mouseButton == RIGHT) {
      //clear();
      //background(204);
      w++;
      h++;
      rect(x, y, w, h);
    }

    if (keyPressed == true && key == 'r') {
      //clear();
      //background(204);       
      w = previousw;
      h = previoush;
      rect(x, y, w, h);
    }
  }
  */
}