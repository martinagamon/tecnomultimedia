class Estrellas {

  // PROPIEDADES:
  int cant, tam;
  float x, y;
  color relleno;

  // CONSTRUCTOR:

  Estrellas() {
    x = 0;
    y = 0;
    relleno = color(255);
    cant = 10;
    tam = 800/cant;
  }

  // MÉTODOS:
  void crear() {
    fill(relleno);
    for (int x=0; x<cant; x++) {
      for (int y=0; y<cant; y++) {  
        ellipse(x*tam, y*tam, 6, 4);
      }
    }
    for (int x=0; x<cant; x++) {
      for (int y=0; y<cant; y++) {  
        ellipse(x*tam-20, y*tam-5, 4, 3);
      }
    }
    for (int x=0; x<cant; x++) {
      for (int y=0; y<cant; y++) {  
        ellipse(x*tam-40, y*tam+30, 6, 4);
      }
    }
  }

  void colorear() {
    if (key=='x') {
      relleno=color(random(255));
    }
  }

  void reiniciar() {
    if (key=='r')
      relleno= color(255);
  }
}
