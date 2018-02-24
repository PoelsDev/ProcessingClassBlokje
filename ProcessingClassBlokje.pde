Blokje b1 = new Blokje(10, 10, 10, 10);
Blokje b2 = new Blokje(10, 10, 10, 10);

void setup() {
  size(200, 200);
  background(204);
  stroke(255, 0, 0);
  fill(255, 0, 0);
  frameRate(25);
}

void draw() {
  b1.update();
  b2.update();
}


class Blokje {
  int x;
  int y;
  int w;
  int h;
  int previousw;
  int previoush;

  Blokje(int X, int Y, int W, int H) {
    x = X;
    y = Y;    
    w = W;
    h = H;
    previousw = W;
    previoush = H;
  }

  void update() {
    rect(x, y, w, h);  
    
    if(keyPressed == true && key == CODED && (keyCode == UP || keyCode == RIGHT || keyCode == DOWN || keyCode == LEFT)){  
      println("Er is op een pijltjestoets gedrukt!");
    if (mousePressed == true && mouseButton == LEFT) {
      clear();
      background(204);
      x--;
      y--;
      rect(x, y, w, h);
    }
    
    } else {
    
    if (mousePressed == true && mouseButton == LEFT) {
      clear();
      background(204);
      x++;
      y++;
      rect(x, y, w, h);
    }
   }          

    if (mousePressed == true && mouseButton == RIGHT) {
      clear();
      background(204);
      w++;
      h++;
      rect(x, y, w, h);
    }

    if (keyPressed == true && key == 'r') {
      clear();
      background(204);       
      w = previousw;
      h = previoush;
      rect(x, y, w, h);
    }
  }
}