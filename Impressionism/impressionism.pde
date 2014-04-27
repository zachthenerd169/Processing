int num = 2000;
float speed = 1;
float taper = .92; // .92
float taperVarience = 0.1; // .02
float brushSize = 10;
float scale = 0.012;

Field_Particle[] points = new Field_Particle[num]; 

boolean halt = false;

PImage photo;

void setup(){
  photo = loadImage("face.jpg");
  size(photo.width, photo.height);
  for(int i=0; i<num; i++){
    points[i] = new Field_Particle();
    points[i].setRandomPosition();
    points[i].setSpeed(speed);
    points[i].setColor(photo.get((int)points[i].getX(),(int)points[i].getY()));
    points[i].setScale(scale);
    points[i].setSize(brushSize);
  }
  
  
}

void draw(){
  if(!halt){
    for(int i=0; i<num; i++){
      points[i].updatePosition();
      points[i].setSize( points[i].getSize() * (taper+random(-1*taperVarience, taperVarience)) );
      
      if(points[i].getSize() < 1){
        points[i].setRandomPosition();
        float decreaseBrushSize = pow(millis()*0.0001,3);
        points[i].setSize(brushSize- decreaseBrushSize);  
        points[i].setColor(photo.get((int)points[i].getX(),(int)points[i].getY()));
      }
      points[i].display();
    }
  }
}

void keyPressed(){
  halt = true;
}
