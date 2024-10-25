Bacteria betty;
Bacteria [] betties = new Bacteria[500];
boolean away = false;
PImage wand;

void setup() {
  size(500, 500);
  wand = loadImage("resized_optimized.png");
  betty = new Bacteria();
  for (int i = 0; i < betties.length; i++) {
    betties[i] = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500)); 
  }
}

void draw() {
  image(wand, 50,50,10,10);
  cursor(wand);
  background(255);
  betty.show();
  betty.move();
    if (away == false) {
     textSize(20);
    text("Charging magic....", 250,100);
  } else {
    textSize(20);
    text("Shooting spell!", 250, 100);
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
    ellipse(myX, myY, 10, 10);
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
      if (myX > mouseX && myX < 400) {
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

