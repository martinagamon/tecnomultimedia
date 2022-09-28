class Planetas {
  // PROPIEDADES:
  float x, x2, x3;
  PImage p1, p2, p3;
  // CONSTRUCTOR:

  Planetas() {
    p1 = loadImage("tierra.png");
    p2 = loadImage("jupiter.png");
    p3 = loadImage("saturno.png");
    x = 20;
    x2 = 250;
    x3 = 510;
  }

  // MÉTODOS:
  void cimagen() {
    image(p1, x, 350, 120, 120);
  }

  void cimagen2() {
    image(p2, x2, 220, 230, 230);
  }

  void cimagen3() {

    image(p3, x3, 90, 380, 180);
  }

  void mover() {
    if (keyPressed && (key== CODED)) {
      if (keyCode==LEFT) {
        x -=5;
      } else if (keyCode == RIGHT) {
        x +=5;
      }
      if (keyPressed && (key== CODED)) {
        if (keyCode==LEFT) {
          x2 -=5;
        } else if (keyCode == RIGHT) {
          x2 +=5;
        }
        if (keyPressed && (key== CODED)) {
          if (keyCode==LEFT) {
            x3 -=5;
          } else if (keyCode == RIGHT) {
            x3 +=5;
          }
        }
      }
    }
  }
}
