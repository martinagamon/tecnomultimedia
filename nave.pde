class Nave {
  PImage nave;
  float x, y;

  Nave() {
    nave= loadImage("nave.png");
    x = -60;
    y = -60;
  }

  void dibujar() {
    image(nave, x, y, 60, 60);
  }

  void volar() {
    if (mousePressed)
      image(nave, mouseX, mouseY, 60, 60);
  }
}
