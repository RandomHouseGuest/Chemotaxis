bacteria[] george;
bacteria[] craig;
bacteria[] steve;
bacteria[] bob;
int click = 0;
void setup(){
  size(1000, 1000);
  george = new bacteria[10];
  craig = new bacteria[10];
  steve = new bacteria[10];
  bob = new bacteria[10];
  for(int i = 0; i < george.length; i++){
    george[i] = new bacteria(20, 20);
    craig[i] = new bacteria(980, 980);
    steve[i] = new bacteria(20, 980);
    bob[i] = new bacteria(980, 20);
  }
}
void draw(){
  background(0, 0, 0);
  for(int i = 0; i < george.length; i++){
    george[i].show();
    george[i].move();
    craig[i].show();
    craig[i].move();
    steve[i].show();
    steve[i].move();
    bob[i].show();
    bob[i].move();
  }
}
class bacteria{
  int myX, myY;
  bacteria(int x, int y){
    myX = x;
    myY = y;
  }
  void move(){
    myX = myX + (int)(Math.random()*7)+1;
    myY = myY + (int)(Math.random()*5)+1;
    if(mouseX >= myX){
      myX = myX + (int)(Math.random()*7)+1;
    } else if(mouseY >= myY){
      myY = myY + (int)(Math.random()*5)+1;
    } else{
      myX = myX + (int)(Math.random()*7)-14;
      myY = myY + (int)(Math.random()*5)-10; 
    }
  }
  void show(){
    rect(myX, myY, 20, 20);
  }
}
void mousePressed(){
  if(click <= 10){
    fill(0, 0, 255);
  } else if(click <= 20){
    fill(255, 0, 0);
  } else{
    fill(0, 255, 0);
  }
  ellipse(mouseX, mouseY, 50, 50);
  click++;
}
