//link youtube
int cant, tam, uy, ux;
float fondis;

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
  fill(255);
  dibujandocuadraditos();
}
void mouseDragged() {
  ux=mouseX;
}
void keyPressed() {
  if (key=='r') {
    ux=200; 
    fondis=120;
  } 
  if (key=='x') { 
    fondis=random(30, 255);
  }
}
