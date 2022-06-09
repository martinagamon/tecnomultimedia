void dibujandocuadraditos() {
  for (int m=0; m<cant; m++) {
    for (int g=0; g<cant; g++) {     
      float d=dist( 400, 400, ux, uy);
      float s=map( d, 0, 255, 30, 190);
      noStroke();
      if ( m%2==0 ) {
        fill(255);
        rect(m*tam+10, g*tam+8, 18, 17);
        fill(0);
        rect(m*tam+8, g*tam+10, 16, 17);
        fill(s);
        rect(m*tam+10, g*tam+10, 15, 15);
      }
      if (m%2==1) {
        fill(0);
        rect(m*tam+10, g*tam+8, 18, 17);
        fill(255);
        rect(m*tam+8, g*tam+10, 16, 17);
        fill(s);
        rect(m*tam+10, g*tam+10, 15, 15);
      }
    }
  }
}
