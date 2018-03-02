class Blokje {
  int x;
  int y;
  int w;
  int h;
  
  int previousw;
  int previoush;
  
  int xRichting = 1;
  int yRichting = 1;
  
  int speed = 1; 

  Blokje(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;    
    this.w = w;
    this.h = h;
    previousw = this.w;
    previoush = this.h;    
  }
  
  void draw(){
    rect(x,y,w,h);
  }
  void update(){  
      x += xRichting * speed;
      y += yRichting * speed;    
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
  
  void speedUp(){
  speed++;  
  }
  
  void speedDown(){
  speed--;
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