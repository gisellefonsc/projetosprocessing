size(500, 500);
background(0);
noStroke();
fill(255);

int x = 0;
int y = 0;
int i = 0;
int j = 0;

while (x<width) {
  y = 0;
  while (y<height) {
    if (i%2==0 && j%2==0)
      triangle(x, y, x, y+50, x+50, y+50);
    else if (i%2!=0 && j%2==0)
      triangle(x, y+50, x+50, y+50, x+50, y);
    else if (i%2==0 && j%2!=0)
      triangle(x, y, x+50, y, x, y+50);
    else if (i%2!=0 && j%2!=0)
      triangle(x, y, x+50, y, x+50, y+0);
    y+=50;
    j++;
  }
  x+=50;
  i++;
}
