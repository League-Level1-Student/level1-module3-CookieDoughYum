int birdX=35;
int birdY=250;
int birdYVelocity=90;
int gravity=1;
int upperPipeHeight = (int) random(100, 200);
int lowerPipeHeight = 250;
int upperPipeWidth=100;
int lowerPipeWidth=100;
int pipeGap=300;
int pipeX=250;
int upperY=0;
int lowerY = 600- lowerPipeHeight;
int score=0;
boolean GameEnd(){
  rect(0, 500, 500, 1);
  if(birdY>=500){
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
rect(pipeX, upperY, upperPipeWidth, upperPipeHeight);
rect(pipeX, lowerY, lowerPipeWidth, lowerPipeHeight);
println(upperPipeHeight);
pipeX++;
teleportPipes();
intersectsPipes();
GameEnd();
if(GameEnd()==true){
  stop();
}
if(intersectsPipes()==true){
  stop();
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
  if(pipeX>=500){
    pipeX=0-upperPipeWidth;
    score++;
     upperPipeHeight = (int) random(100, 200);
   
 }
}



boolean intersectsPipes() { 
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+upperPipeWidth)){
          return true; }
     else if (birdY>lowerY && birdX > pipeX && birdX < (pipeX+lowerPipeWidth)) {
          return true; }
     else { return false; 
     }
}
