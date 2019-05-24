int birdX=35;
int birdY=250;
int birdYVelocity=30;
int gravity=1;
int upperPipeHeight = (int) random(100, 400);
int lowerPipeHeight = (int) random(100, 400);
int upperPipeWidth=100;
int lowerPipeWidth=100;
int pipeGap=300;
int pipeX=250;
int upperY=0;
int lowerY=500;
int score=0;
boolean GameEnd(){
  rect(0, 500, 500, 1);
  if(birdY==500){
    return true;
}
else{
  return false;
}
}
void draw(){
  background(#EA1111);
fill(#37EA11);
stroke(#114CEA);
ellipse(birdX, birdY, 35, 35);
birdY++;
birdYVelocity++;
rect(pipeX,0, 100, 100);
teleportPipes();
rect(pipeX, 500, 100, 400);
pipeX = upperY + upperPipeHeight + pipeGap;
if(birdX==pipeGap && birdY==pipeGap){
  score++;
}
text(score, 100, 100);
}

void setup(){
  size(500,500);
}

void mousePressed(){
  birdY-=birdYVelocity;
}

void teleportPipes(){
  pipeX++;
  if(pipeX>=500){
    pipeX=0;
  }
}



boolean intersectsPipes() { 
     if (birdY < upperPipeHeight && birdX > upperPipeWidth && birdX < (pipeX+upperPipeWidth)){
          return true; }
     else if (birdY>lowerPipeHeight && birdX > pipeX && birdX < (pipeX+lowerPipeWidth)) {
          return true; }
     else { return false; }
}
