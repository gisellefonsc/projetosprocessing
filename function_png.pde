void setup() {
  size(400, 400);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  background (184,6,100);
  for (int j=0; j<10; j++)
    for (int i=0; i<10; i++)
      desenho(i*50+25, j*50+25, 50);
}

void desenho(int x, int y, int l) {
  fill(230,87,100);
  ellipse(x, y, l, l);
   fill(184,6,100);
  ellipse (x, y, l/2, l/2);
  fill(207,53,100);
  ellipse (x, y, l/4, l/4);
  fill(0);
  ellipse (x, y, l/8, l/8);
}
