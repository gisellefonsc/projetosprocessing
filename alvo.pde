void setup() {
  size(300, 300);
  colorMode(HSB, 360,100,100);
  noStroke();
}

void draw() {
  for (int i = 5; i>0; i--) {
  if (i%2 == 0) 
  fill(18,100,92);
  else 
  fill(172,100,92);
  circle(width/2, width/2, i*100);

}}
