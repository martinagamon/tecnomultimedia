import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Maria Dolores Panelli 91371/7 y Martina Gamón 91538/3
//link yt https://youtu.be/6-RjJtTZgC4
Minim minim;
AudioPlayer player;
AudioPlayer player1;
AudioPlayer player2;
AudioPlayer player3;
Espacio espacio;
void setup() {
  size(800, 600);
  espacio = new Espacio();
  minim = new Minim(this);
  player = minim.loadFile("magic.mp3");
  player1 = minim.loadFile("bajo_5.mp3");
  player2 = minim.loadFile("neverita.mp3");
  player3 = minim.loadFile("sad.mp3");
}
void draw() {

  espacio.dibujar();
}

void keyPressed () {
  espacio.mouse();
  espacio.teclado();
  espacio.reiniciar();
}
void mousePressed() {
  espacio.mousePressed();
}
