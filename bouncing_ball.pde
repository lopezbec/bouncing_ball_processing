//Declare new varaible "circleX"
float circleX;
float dirrectionX;
float dirrandomX;

//Declare new varaible "circleY"
float circleY;
float dirrectionY;
float dirrandomY;

void setup() {
  size(640, 360);
  circleX=random(80, width-80);
   circleY=random(80, height-80);
  //set initial random direction X
  dirrandomX=random(-1,1);
  if(dirrandomX<0){
  dirrectionX=-1;
  }else{ dirrectionX=1;}
  
  //set initial random direction Y
  dirrandomY=random(-1,1);
  if(dirrandomY<0){
  dirrectionY=-1;
  }else{ dirrectionY=1;}
  

}




void draw() {
  
  if(!mousePressed ){
    background(50);}
  

  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(circleX, circleY, 24, 24);
  
  //Update dirrection X and Y
  circleX=circleX+(5*dirrectionX);
  circleY=circleY+(2*dirrectionY);
  
  //Change direction once it reachers on end
  if(circleX>=width | circleX<=0){
  dirrectionX=dirrectionX*-1;
  }
  
    //Change direction once it reachers on end
  if(circleY>=height | circleY<=0){
  dirrectionY=dirrectionY*-1;
  }

println(circleX, dirrectionX,circleY, dirrectionY);

}
