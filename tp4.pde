//link video youtube https://youtu.be/7j9U61kXAU4
Espacio uno;

void setup() {
  size(800, 500);
  uno = new Espacio();
}

void draw() {
  uno.dibujar();
  uno.actualizar();
}

void keyPressed() {
  uno.x();
  uno.r();
}

void mouseDragged() {
  uno.mouse();
}
