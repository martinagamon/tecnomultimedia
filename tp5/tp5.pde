// Maria Dolores Panelli 91371/7 y Martina Gamón 91538/3
// link youtube https://www.youtube.com/watch?v=LoMTK0HxP
Espacio espacio;
void setup() {
  size(800, 600);
  espacio = new Espacio();
}
void draw() {

  espacio.dibujar();
}

void keyPressed () {
  espacio.mouse();
  espacio.teclado();
  espacio.reiniciar();
}
void mousePressed(){
  espacio.mousePressed();
  
  
  
}
