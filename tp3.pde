//https://youtu.be/UgVDmduFV_w
int cant, tam, newMemoria;
PImage []memoria = new PImage[13];
int []columnas = new int[5];
int []filas = new int[5];
color relleno;
int estado;
int contador,imagenesDescubiertasCantidad;
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

  columnas [0] = 0;
  columnas [1] = 200;
  columnas [2] = 400;
  columnas [3] = 600;
  columnas [4] = 800;

  filas [0] = 0;
  filas [1] = 200;
  filas [2] = 400;
  filas [3] = 600;

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

  ganar[0] =false;
  ganar[1] =false;
  ganar[2] =false;
  ganar[3] =false;
  ganar[4] =false;
  ganar[5] =false;
  ganar[6] =false;
  ganar[7] =false;
  ganar[8] =false;
  ganar[9] =false;
  ganar[10] =false;
  ganar[11] =false;

  estado=0;
  contador=0;
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
    textSize(15);
    noFill();
    rect(550,480,100,30);
    fill(0);
    text("SIGUIENTE",600,492);
  } else if (estado==1) {
    background(relleno);
    textSize(60);
    fill(255, 0, 0);
    text("INSTRUCCIONES", 400, 150);
    textSize(50);
    text("Destapa todos los albums \nantes de los 5 segundos", 400, 300);
    textSize(20);
    text("Haz doble click para jugar :)", 400, 490);
  } else if (estado==2) {
    fill(relleno);
    textSize(60);
    text("INSTRUCCIONES", 400, 150);
    textSize(50);
    text("Destapa todos los albums \nantes de los 5 segundos", 400, 300);
    textSize(20);
    text("Haz doble click para jugar :)", 400, 490);
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
        }
      }
  if (estado==4) {
    background(255,0,0);
    text("Ganaste!!!", 400, 300);
  } else if (estado==5) {
    background(relleno);
    fill(255, 0, 0);
    text("PERDISTE :(", 400, 300);
    textSize(15);
    noFill();
    rect(550,480,100,30);
    fill(0);
    text("SIGUIENTE",600,492);
  } else if (estado==6) {
    background(relleno);
    image(memoria[12], 600, 0, 300, 280);
    image(memoria[12], 0, 400, 300, 280);
    textFont(creditos);
    fill(255,0,0);
    text("Créditos", 400, 50);
    textSize(40);
    text("Tecnología Multimedial 1", 400, 180);
    text("Comisión 2 \n Profesor: Matias Jauregui Lorda", 400, 260);
    text("Maria Dolores Panelli 91371/7", 400, 340);
    text("Martina Gamón 91538/3", 400, 380);
    textFont(letrita);
    textSize(15);
    text("Presiona la barra espaciadora para voler a jugar:D", 400, 500);
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
 
  } else if(estado==4){
  estado=6;
  }else if(estado==5){
    estado=6;
  }
  
  if (estado==4 && estado==5) {
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
