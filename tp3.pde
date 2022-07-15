//link youtube: https://youtu.be/M-fIqEuiWRU
//MARTINA GAMON 91538/3 Y DOLORES PANLLI 91371/7
int cant, tam, newMemoria;
PImage []memoria = new PImage[13];
int []columnas = new int[5];
int []filas = new int[5];
color relleno;
int estado;
int contador, imagenesDescubiertasCantidad;
PFont letrita, creditos;
boolean []imagenesDescubiertas=new boolean[12];
boolean []ganar= new boolean[12];

void setup() {
  size(800, 600);
  cant= 4;
  tam= 800/cant;
  newMemoria=5;
  imagenesDescubiertasCantidad=0;
  colorMode(RGB);

  for (int i=0; i < columnas.length; i++) {
    columnas[i]= i*200;
  }

  for (int i=0; i < filas.length; i++) {
    filas[i]= i*200;
  }

  letrita=createFont("Lemon Days.ttf", 100);
  creditos=createFont("SultanNahiaW20.ttf", 100);
  memoria [0]= loadImage("taylorSwift.jpg");
  memoria [1]= loadImage("shawn.jpg");
  memoria [2]=  loadImage("zayn.jpg");
  memoria [3]=  loadImage("queen.jpg");
  memoria [4]=  loadImage("imagineDragons.jpg");
  memoria [5]= loadImage("rauw.jpg");
  memoria [6]=loadImage("dua.jpg");
  memoria [7]=loadImage("niall.jpg");
  memoria [8]=loadImage("harry.jpg");
  memoria [9]=loadImage("lanadelrey.jpg");
  memoria [10]=loadImage("badBunny.jpg");
  memoria [11]=loadImage("billie.jpg");
  memoria [12]=loadImage("estrellitas.png");
  relleno=color(254, 185, 255);
  estado=0;
  contador=0;

  for (int i=0; i < ganar.length; i++) {
    ganar[i]= false;
  }
}

void draw() {
  strokeWeight(2);
  textFont(letrita);

  if (estado==0) {
    rect(800, 600, 800, 600);
    textAlign(CENTER, CENTER);
    background(relleno);
    fill(255);
    text("CLICKEALBUMS", 400, 300);
    image(memoria[12], 500, 0, 300, 280);
    image(memoria[12], 0, 400, 300, 280);
    noFill();
    rect(550, 480, 100, 30);
    fill(0);
    texto("SIGUIENTE", 600, 502, 20);
  } else if (estado==1) {
    background(relleno);
    fill(255, 0, 0);
    texto("INSTRUCCIONES", 400, 150, 60);
    texto("Destapa todos los albums \nantes de los 5 segundos", 400, 300, 50);
    texto("Haz doble click para jugar :)", 400, 490, 20);
  } else if (estado==2) {
    fill(relleno);
    texto("INSTRUCCIONES", 400, 150, 60);
    texto("Destapa todos los albums \nantes de los 5 segundos", 400, 300, 50);
    texto("Haz doble click para jugar :)", 400, 490, 20);
  } else if (estado==3) {
    for (int i=0; i< cant; i++) {
      for (int l=0; l<cant; l++) {
        noFill();
        rect(i*tam, l*tam, 200, 200);
        contador++;
        println( contador );
        println( contador/700 );
      }
      // condición perder
      if (contador>=5*700) {
        estado=5;
      }
    }
  }
  //Medir si ganaste
  int imagenesDescubiertasCantidad;
  imagenesDescubiertasCantidad = 0;
  for (int i = 0; i < 12; i ++) {
    imagenesDescubiertas[i] = false;

    if (ganar[i] == true) {
      imagenesDescubiertas[i] = true;
      imagenesDescubiertasCantidad++;
    }
    if (imagenesDescubiertasCantidad == 12) {
      if (contador<=6*700) {
        estado =4;
      }
      if (estado==4) {
        setup();
        estado=4;
      }
    }
  }

  if (estado==4) {
    fill(relleno);
    background(255, 0, 0);
    text("Ganaste!!!", 400, 300);
    noFill();
    rect(550, 480, 100, 30);
    fill(0);
    texto("SIGUIENTE", 600, 502, 20);
  } else if (estado==5) {
    background(relleno);
    fill(255, 0, 0);
    text("PERDISTE :(", 400, 300);
    noFill();
    rect(550, 480, 100, 30);
    fill(0);
    texto("SIGUIENTE", 600, 502, 20);
  } else if (estado==6) {
    background(relleno);
    image(memoria[12], 600, 0, 300, 280);
    image(memoria[12], 0, 400, 300, 280);
    textFont(creditos);
    fill(255, 0, 0);
    text("Créditos", 400, 90);
    texto("Tecnología Multimedial 1 \n Comisión 2 \nProfesor: Matias Jauregui Lorda \n Maria Dolores Panelli 91371/7 \n Martina Gamón 91538/3", 400, 180, 40);
    textFont(letrita);
    texto("Presiona la barra espaciadora para voler a jugar:D", 400, 500, 15);
  }
}
void mousePressed() {
  if (estado==0) {
    estado=1;
  } else if (estado==1) {
    estado=2;
  } else if (estado==2) {
    estado=3;
  } else if (estado==3) {
    imagenes();
  } else if (estado==4 || estado==5) {
    estado=6;
  }
}

void keyPressed() {
  if (key==' ') {
    if (estado==6) {
      reiniciar();
    }
  }
}
