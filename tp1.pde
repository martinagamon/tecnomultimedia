//VARIABLES
PImage img1, img2, img3, img4, img5, img6;
PFont creditos, titulares, titulo;
float relleno, fondo, tamanio;
boolean dentroBoton;
color cTitulo, fondis, multicolor;

void setup() {
  size(1000, 500);
  background(0);
  textSize(34);

  img1=loadImage("img1.png");
  img2=loadImage("img2.png");
  img3=loadImage("img3.png");
  img4=loadImage("img4.png");
  img5=loadImage("img5.png");
  img6=loadImage("img6.png");
  creditos= createFont("Sultan Nahia W20.ttf", 34);
  titulares=createFont("Subaccuz-Regular.ttf", 54);
  titulo=createFont("Monster AG.ttf", 120);
  fondo=0;
  tamanio=1;
  relleno=240;
  cTitulo=color(66, 136, 216);
  fondis=color(255);
}

void draw() {
  dentroBoton=(mouseX>=450 && mouseY>=450 && mouseX<=450+40 && mouseY<=450+40);
  background(fondo);
  fill(relleno);
  println(frameCount);
  if (frameCount>0 && frameCount<250) {
    fill(cTitulo);
    textFont(titulo);
    textSize(tamanio);
    text("MONSTERS, INC.", 130, 280);
    fill(255);
    rect(450, 450, 40, 40);
    if (frameCount>5) {
      tamanio= tamanio+1.4;
    }
    if (frameCount>90) {
      tamanio=120;
    }
    if (frameCount>130) {
      cTitulo=0;
    }
  }

  if (frameCount>270 && frameCount<360) {
    image(img1, 80, 70, 470, 325);
    if (frameCount>280) {
      textFont(creditos);
      text("DIRECTED BY", 500, 330);
      textFont(titulares);
      text("Pete Docter", 545, 390);
    }
  }


  if (frameCount>380 && frameCount<520) {
    image(img2, 450, 5, 360, 480);
    if (frameCount>390) {
      textFont(creditos);
      text("CO-DIRECTED BY", 265, 155);
      textFont(titulares);
      text("Lee Unkrich", 305, 205);
    }

    if (frameCount>400) {
      text("David Silverman", 225, 265);
    }
  }

  if (frameCount> 525 && frameCount<665) {
    image(img3, 20, 195, 950, 325);
    if (frameCount>545) {
      textFont(creditos);
      text("PRODUCED BY", 200, 125);
      textFont(titulares);
      text("Darla K.Anderson", 250, 185);
    }
  }
  if (frameCount>680 && frameCount<770) {
    image(img4, 90, 15, 320, 480);

    if (frameCount>695) {
      textFont(creditos);
      text("EXECUTIVE PRODUCERS", 500, 145);
      textFont(titulares);
      text("John Lasseter\n  Andrew Stanton", 475, 205);
    }
  }
  if (frameCount>785 && frameCount<900) {
    image(img5, 580, 15, 230, 480);
    if (frameCount>800) {
      textFont(creditos);
      text("ASSOCIATE PRODUCER", 175, 335);
      textFont(titulares);
      text("Kori Rae", 355, 395);
    }
  }
  if (frameCount>915 && frameCount<1025) {
    image(img6, 500, 25, 280, 470);
    if (frameCount>925) {
      textFont(creditos);
      text("ORIGINAL STORY BY", 155, 190);
      textFont(titulares);
      text("Pete Docter", 235, 250);
      text("Jill Culton", 275, 310);
      text("Jeff Pidgeon", 240, 370);
      text("Ralph Eggleston", 200, 430);
    }
  }
}
void mouseClicked() {
  if (dentroBoton && frameCount>130 && frameCount<250 ) {
    background(fondis);
    fill(66, 136, 216);
    textFont(titulo);
    text("MONSTERS, INC.", 130, 500-frameCount);
  }
}
void keyPressed() {
  if (key==' ' || key=='p') {
    relleno= random(20, 230);
  }
  if (key=='m' && frameCount>255) {
    fondo= random(255);
  } else if (key=='r') {
    relleno=240;
    fondo=0;
  }
}
