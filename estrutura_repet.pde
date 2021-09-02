size(600, 500);
background(335, 57, 100);
noStroke();

int ped = width/10;
for (int x = 0; x<width+ped; x+=ped) {
  for (int y = 0; y<height+ped; y+=ped) {
    fill(178, 85, 90);
    if (y/ped%2==0)
      triangle(x, y, x-ped/2, y+ped, x+ped/2, y+ped);
    else triangle(x+ped/2, y, x, y+ped, x+ped, y+ped);
  }
}
