void imagenes() {
  int valorDeImagen = 0;
  for (int i= 0; i<4; i++) {
    for (int j= 0; j<3; j++) {
      if (mouseX>columnas[i] && mouseX < columnas[i] + 200 && mouseY>filas[j] && mouseY < filas[j] + 200) {

        image(memoria[valorDeImagen], columnas[i], filas[j], 200, 200);
        ganar[valorDeImagen] =true;
      }
      valorDeImagen++;
    }
  }
}
void texto( String texto, float x, float y, float tamanio) {

  textAlign( CENTER );
  textSize( tamanio );
  text( texto, x, y );
} 

void reiniciar() {
  estado=0;
  contador=0;
}
