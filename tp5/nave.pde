class Nave { //<>//
  PImage navecita;
  float x, y;
  int tam, cant;

  Nave(float x, float y) {
    navecita = loadImage("nave.png");
    x = 700;
    y = 300;
  }


  void dibujar() {
    image(navecita, mouseX, mouseY, 100, 50);
  }
}
  /*void mover() {
    if (keyPressed && (key== CODED)) {
      if (keyCode==LEFT) {
        x -=3;
      } else if (keyCode == RIGHT) {
        x +=3;
      }
      if (keyCode == UP) {
        y -=3;
      } else if (keyCode==DOWN) {
        y +=3;
      }
    }
  }
  //if() ---> para mover la nave y esquivar objetos.
  //if nave choca con planeta pierde/*
}*/
