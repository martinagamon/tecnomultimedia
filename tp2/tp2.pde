//https://youtu.be/tUZUbgrI7kg

int cant, tam, uy, ux;
color fondis;

void setup() {
  size(400, 400);
  cant=8;
  tam=400/cant;
  ux=200;
  uy=400;
  fondis=120;
}
void draw() {
  background(fondis);
  dibujandocuadraditos();
}
void mouseDragged() {
  ux=mouseX;
}
void keyPressed() {
  if (key=='x') { 
    fondis=color(random(255));
  }
  if (key=='w') {
    fondis= color(random(255), random(255), random(255));
  }
  if (key=='r') {
    ux=200; 
    fondis=120;
  }
}
