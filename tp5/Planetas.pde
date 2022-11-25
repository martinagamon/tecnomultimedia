class Planetas {
  float posX, posY, x , y;
  PImage [] planetas;
   int  vel, cantidadPlanetas;
  Planetas () {
     this.vel = 0;
    cantidadPlanetas = 0;
    planetas = new PImage [5];
    for (int i=0; i<5; i++) {
      planetas [i] = loadImage (i+".png");
    }
    posY = random (45, 305);
    posX = -200;
  }

  void dibujar () {
    pushStyle ();
    image (planetas [cantidadPlanetas], posX, posY);
    popStyle ();


    if (posX > width + 100) {
      posX = -200;
      posY = random (45, 305);
      cantidadPlanetas ++;
      vel ++;
    }

    if (cantidadPlanetas >= 5) {
      cantidadPlanetas = 0;
    }
  }
  void actualizar(){
    
    this.posX  += this.vel;
    
    
  }
}
