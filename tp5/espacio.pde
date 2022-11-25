class Espacio {
  PFont letrita, creditos;
  PImage fondo, estrellitas;
  float posX, posY, velC=0.1;
  int estado, contador, realContador;
  Planetas planetas;
  Estrellas varias;
  Nave n1;

  Espacio() {
    fondo = loadImage("espacio.jpg");
    estrellitas = loadImage("estrellitas.png");
    creditos=createFont("SultanNahiaW20.ttf", 100);
    letrita=createFont("Lemon Days.ttf", 20);
    varias = new Estrellas();
    n1 = new Nave();
    planetas = new Planetas(35, 365);
    estado = 0;
    contador = 0;
  }

  void dibujar() { 
    if (estado == 0) {
      pantallaInicio();
      player2.pause();
      player.play();
    }
    if (estado == 1) {
      pantallaJuego();
      player.pause();
      player1.play();
    }
    if (estado == 2) {
      pantallaGanaste();
      player1.pause();
      player2.play();
    }
    if (estado == 3) {
      pantallaPerdiste();
      player1.pause();
      player3.play();
    }
    if (estado == 4) {
      pantallaCreditos();
      player3.pause();
      player2.play();
    }
  }

  void pantallaInicio() {
    textFont(letrita);
    image(fondo, 0, 0, 800, 600); 
    image(estrellitas, 550, -110, 300, 280);
    image(estrellitas, -30, 400, 300, 280);
    fill(255);
    texto("SPACEGAME", 120, 320, 100);
    textFont(creditos);
    texto("Esquiva todos los planetas antes de los 20 segundos \n        CUIDADO! Si te chocas alguno pierdes :(", 130, 360, 30);
    rect(300, 450, 150, 50);
    fill(53, 79, 126);
    text("JUGAR", 335, 485);
  }

  void pantallaJuego() {
    image(fondo, 0, 0, 800, 600);
    varias.crear();
    n1.dibujar();
    fill(53, 79, 126);
    textSize(150);
    text(" "+ contador, width-485, 350);
    planetas.dibujar();
    println(contador);
    planetas.actualizar();

    // condición ganar
    if (contador>20) {
      estado = 2;
    }
    realContador=(realContador+1)%20;
    if (realContador==0) {
      contador=contador+1;
    }
    // condición perder
    float d = dist(planetas.posX, planetas.posY, mouseX, mouseY);
    if (d<90) { 
      estado=3;
    }
    if (contador>=5*100) {
      estado = 3;
    }
  }
  void pantallaGanaste() {
    image(fondo, 0, 0, 800, 600);
    image(estrellitas, 550, -110, 300, 280);
    image(estrellitas, -30, 400, 300, 280);
    textFont(letrita);
    fill(255);
    texto("Ganaste!!!", 130, 350, 100);
    rect(550, 480, 100, 30);
    fill(53, 79, 126);
    textFont(creditos);
    texto("SIGUIENTE", 562, 500, 20);
  }
  void pantallaPerdiste() {
    image(fondo, 0, 0, 800, 600); 
    fill(255);
    textFont(letrita);
    texto("PERDISTE :(", 130, 350, 100);
    fill(255);
    rect(550, 480, 100, 30);
    fill(53, 79, 126);
    textFont(creditos);
    texto("SIGUIENTE", 562, 500, 20);
  }
  void pantallaCreditos() {
    image(fondo, 0, 0, 800, 600); 
    image(estrellitas, 550, -110, 300, 280);
    image(estrellitas, -30, 400, 300, 280);
    textFont(creditos);
    fill(255);
    textFont(letrita);
    texto("Creditos", 220, 110, 80);
    textFont(creditos);
    texto("Tecnología Multimedial 1 Comisión 2 \n    Profesor: Matias Jauregui Lorda \n     Maria Dolores Panelli 91371/7 \n          Martina Gamón 91538/3", 150, 210, 40);
    textFont(letrita);
    fill(255, 251, 139);
    texto("Presiona la barra espaciadora para voler a jugar:D", 195, 500, 15);
  }
  void mouse() {
    varias.colorear();
  }

  void teclado() {
    varias.reiniciar();
    //n1.mover();
  }

  void reiniciar() {
    if (key ==' ') {
      estado = 0;
      contador = 0;
    }
  }

  void mousePressed() {
    if (estado==0 &&  mouseX>=300 && mouseY>=450 && mouseX<=300+150 && mouseY<=450+50) {
      estado=1;
    } else if (estado==2 || estado==3 && mouseX>=550 && mouseY>=480 && mouseX<=550+100 && mouseY<=480+30) {
      estado=4;
    }
  }
}
void texto( String texto, float x, float y, float tamanio) {
  textSize( tamanio );
  text( texto, x, y );
} 
