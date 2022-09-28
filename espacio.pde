class Espacio {

  PImage fondo;
  Estrellas varias;
  Planetas p1, p2, p3;
  Nave n1;

  Espacio() {
    fondo = loadImage("estrellado.jpg");
    varias = new Estrellas();
    p1 = new Planetas();
    p2 = new Planetas();
    p3 = new Planetas();
    n1= new Nave();
  }

  void dibujar() {
    image(fondo, 0, 0, 800, 600);
    varias.crear();
    p1.cimagen();
    p2.cimagen2();
    p3.cimagen3();
    n1.dibujar();
  }

  void actualizar() {
    p1.mover();
    p2.mover();
    p3.mover();
  }

  void x() {
    varias.colorear();
  }

  void r() {
    varias.reiniciar();
  }

  void mouse() {
    n1.volar();
  }
}
