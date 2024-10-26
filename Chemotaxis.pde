Bacteria betty;
Bacteria [] betties = new Bacteria[500];
boolean away = false;

void setup() {
  size(500, 500);
  betty = new Bacteria();
  for (int i = 0; i < betties.length; i++) {
    betties[i] = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500)); 
  }
}

void draw() {
  background(255);
  textSize(40);
  text("Click to do some magic!", 20,40);
  wand();
  betty.show();
  betty.move();
    if (away == false) {
     textSize(20);
    text("Charging spell...", 20,70);
  } else {
    textSize(20);
    text("Shooting spell!", 20, 70);
  }
  for (int i = 0; i < betties.length; i++) {
    betties[i].show();
    betties[i].move();
  }
}

void mousePressed() {
  if (away == false) {
    away = true;
  } else {
    away = false;
  }
}

void wand(){
  fill(250,219,93);
  rect(mouseX, mouseY, 5,70);
  ellipse(mouseX+3, mouseY-7, 20,20);
}

class Bacteria {
  int myX, myY, bactcolor;
  Bacteria() {
    myX = width/2;
    myY = height/2;
    bactcolor = color(0);
  }

  Bacteria(int x, int y) {
    myX = x;
    myY = y;
    bactcolor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }

  void show() {
    fill(bactcolor);
    noStroke();
    ellipse(myX, myY, 7, 7);
  }

  void move() {
    if (away == false) {
      if (myX < mouseX) {
        myX = myX + (int)(Math.random()*5) - 1;
      } else {
        myX = myX + (int)(Math.random()*5) - 3;
      }
      if (myY < mouseY) {
        myY = myY + (int)(Math.random()*5) -1;
      } else {
        myY = myY + (int)(Math.random()*5) -3;
      }
    } else {
      if (myX > mouseX) {
        myX = myX + (int)(Math.random()*5) - 1;
      } else {
        myX = myX + (int)(Math.random()*5) - 3;
      }
      if (myY > mouseY) {
        myY = myY + (int)(Math.random()*5) -1;
      } else {
        myY = myY + (int)(Math.random()*5) -3;
      }
    }
  }
}
