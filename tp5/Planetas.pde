class Planetas {
  PImage [] planetas;
  int cantidadPlanetas, vel;
  float posX, posY, x, y;

  Planetas () {
    this.vel = 10;
    cantidadPlanetas = 0;
    planetas = new PImage [5];
    for (int i=0; i<5; i++) {
      planetas [i] = loadImage (i+".png");
    }
    posY = random (75, 365);
    posX = 100;
  }

  void dibujar () {
    pushStyle ();
    image (planetas [cantidadPlanetas], posX, posY);
    popStyle ();



    if (posX > width + 200) {
      posY = random (75, 365);
      posX = 20;
      cantidadPlanetas ++;
      vel ++;
    }

    if (cantidadPlanetas >= 5) {
      cantidadPlanetas = 0;
    }
  }
  void actualizar() {

    this.posX  += this.vel;
  }
}
