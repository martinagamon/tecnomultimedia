class Nave { //<>//
  PImage navecita;
  float x, y;
  int tam, cant;

  Nave() {
    navecita = loadImage("nave.png");
    x = 700;
    y = 300;
  }


  void dibujar() {
    image(navecita, mouseX, mouseY, 100, 50);
  }
}
