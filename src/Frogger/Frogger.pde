int hopDistance=50;
int FrogX=400;
int FrogY=600;
Car car=new Car(100, 400, 200, 5);
Car car1=new Car(200, 200, 200, 5);
Car car2=new Car(300, 100, 200, 5);
void setup(){
  size(800, 600);
}
void draw(){
  background(#0D07E8);
  fill(#E80729);
  ellipse(FrogX, FrogY, 100, 100);
  car.MoveLeft();
  car.display();
  car1.MoveRight();
  car1.display();
  car2.MoveLeft();
  car2.display();
  boolean m=intersects(car);
  if(m==true){
    FrogX=400;
    FrogY=600;
  }
  boolean n=intersects(car1);
 
  if(n==true){
    FrogX=400;
    FrogY=600;
  }
  boolean w=intersects(car2);
  if(w==true){
    FrogX=400;
    FrogY=600;
  }
  
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  FrogY-=5;
            }
            else if(keyCode == DOWN)
            {
                  FrogY+=5;
            }
            else if(keyCode == RIGHT)
            {
                  FrogX+=5;
            }
            else if(keyCode == LEFT)
            {
                  FrogX-=5;
            }
      }
}

void outsideCanvas(){
  if(FrogX>=800){
    FrogX=0;
  }
  if(FrogX<=0){
    FrogX=1;
  }
  if(FrogY<=0){
    FrogY=1;
  }
  if(FrogY>=600){
    FrogY=599;
  }
}

public class Car{
  int CarX;
  int CarY;
  int CarSize;
  int CarSpeed;
Car(int CarX, int CarY, int CarSize, int CarSpeed){
 this.CarX=CarX;
 this.CarY=CarY;
 this.CarSize=CarSize;
 this.CarSpeed=CarSpeed;
}
void display(){
 fill(0, 255, 0);
 rect(CarX, CarY, CarSize, 20);
}
void MoveLeft(){
  CarX-=CarSpeed;
  if(CarX<=0){
    CarX=800;
  }
  
}
void MoveRight(){
  CarX+=CarSpeed;
  if(CarX>=800){
    CarX=0;
  }
}
int getX(){
 return CarX; 
}
int getY(){
 return CarY; 
}
int getSize(){
  return CarSize;
}

} 
boolean intersects(Car car) {
      if ((FrogY > car.getY() && FrogY < car.getY()+50) && (FrogX > car.getX() && FrogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}
