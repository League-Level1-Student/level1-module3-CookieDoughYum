int birdX=35;
int birdY=250;
int birdYVelocity=30;
void draw(){
  background(#EA1111, #37EA11, #114CEA);
fill(#EA1111, #37EA11, #114CEA);
stroke(#EA1111, #37EA11, #114CEA);
ellipse(35, 55, birdX, birdY);
birdY++;
}

void setup(){
  size(500,500);
}
