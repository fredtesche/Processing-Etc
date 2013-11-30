int hue;
int i;
int j;
int image;
int a = 100;
int b;
int aDir = 0;
int go = 1;

void setup() {
  size(1440, 900);
}

void draw() {
  if (go == 0 && a==0 && hue == 255) {
    noLoop();
  }

  if (go == 1) {
    go = 0;
  }
  
  colorMode(HSB);
  background(hue, 255, 255);

  switch(hue) {
  case 256:
    hue = 0;
    break;
  default:
    hue++;
    break;
  }

  squareGrid(a, i, j);

  switch(aDir) {
  case 0:
    a--;
    break;
  case 1:
    a++;
    break;
  }

  switch(a) {
  case 100:
    aDir = 0;
    break;
  case -100:
    aDir = 1;
    break;
  }

  switch(i) {
  case -110:
    i=0;
  default:
    i--;
    break;
  }

  switch(j) {
  case -110:
    j=0;
  default:
    j--;
    break;
  } 

  PImage img;
  img = loadImage("camera.png");
  image(img, 495, 281);
}

void squareGrid(int a, int x, int y) {
  noStroke();
  for (int i=0; i<16; i++) {
    for (int j=0; j<20; j++) {
      rect(x+(i*100)+(i*10), y+(j*50)+(j*10), a, a);
    }
  }
}

