Blokje b1 = new Blokje(20, 50, 10, 10);
Blokje b2 = new Blokje(10, 10, 10, 10);

void setup() {
  size(200, 200);
  background(204);
  stroke(255, 0, 255);
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
  
  if(keyPressed == true && key == CODED){
  switch(keyCode){
    case UP:
    println("Richting is nu UP");   
    b1.goUp();
    b2.goUp();
    break;
    case DOWN:
    println("Richting is nu DOWN");
    b1.goDown();
    b2.goDown();
    break;
    case LEFT:
    println("Richting is nu LEFT");
    b1.goLeft();
    b2.goLeft();
    break;
    case RIGHT:
    println("Richting is nu RIGHT");
    b1.goRight();
    b2.goRight();
    break;
  }
  }
  /*
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
  */
  if(mousePressed == true && mouseButton == RIGHT){
  b1.grow();
  b2.grow();
  }
  
  
  if(keyPressed == true && key == 'r'){
  b1.reset();
  b2.reset();
  }
  
  if(keyPressed == true && key == 'c'){
  stroke(random(0,255),random(0,255),random(0,255));
  fill(random(0,255),random(0,255),random(0,255));
  }
  
  if(keyPressed == true && key == 's'){
  println("Speed +1");
  b1.speedUp();
  b2.speedUp();
  }
  
  if(keyPressed == true && key == 'd'){
  println("Speed -1");
  b1.speedDown();
  b2.speedDown();
  }
}