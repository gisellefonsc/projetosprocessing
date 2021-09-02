size (250, 160);
colorMode(HSB, 360, 100, 100);
background(91, 41, 100);
fill(294, 44, 96);

int [] linhas = new int [10];
for (int i=0; i<10; i++) {
  linhas[i]=(int)random(20, 80);
  rect(0, (i*5)*3, (linhas[i])*3, 15);
  print("Nº Sorteado: " + linhas [i] + " ");
}
