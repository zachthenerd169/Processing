int num = 2000;
float speed = 1;
float taper = .92;
float taperVarience = 0.15;
float brushSize = 15;
float scale = 0.006;
float alpha = 50;

Field_Particle[] points = new Field_Particle[num]; 

boolean halt = false;

PImage photo;

void setup(){
  photo = loadImage("space3.jpg");
  size(photo.width, photo.height);
  for(int i=0; i<num; i++){
    points[i] = new Field_Particle();
    points[i].setRandomPosition();
    points[i].setSpeed(speed);
    points[i].setColor(photo.get((int)points[i].getX(),(int)points[i].getY()),alpha);
    points[i].setScale(scale);
    points[i].setSize(brushSize);
  }
  
  background(0);
  
  
}

void draw(){
  if(!halt){
    for(int i=0; i<num; i++){
      points[i].updatePosition();
      points[i].setSize( points[i].getSize() * (taper+random(-1*taperVarience, taperVarience)) );
      
      if(points[i].getSize() < 1){
        points[i].setRandomPosition();
        float decreaseBrushSize = pow(millis()*0.00005,4);
        float newBrushSize = brushSize - decreaseBrushSize;
        if(newBrushSize >=1){
          points[i].setSize(brushSize- decreaseBrushSize); 
          color newColor = photo.get((int)points[i].getX(),(int)points[i].getY());
          newColor = randomizeHue(newColor,5);
          newColor = randomizeSaturation(newColor,100);
          points[i].setColor(newColor);
        } else {
          points[i].setSize(0);
        }  
    }
      points[i].display();
    }
  }
}

void keyPressed(){
  halt = true;
}

color randomizeHue(color input, float val){
  color out;
  pushMatrix();
  colorMode(HSB);
  out = color(hue(input)+random(-1*val,val),saturation(input),brightness(input));
  popMatrix();
  return out;
}

color randomizeSaturation(color input, float val){
  color out;
  pushMatrix();
  colorMode(HSB);
  out = color(hue(input),saturation(input)+random(-1*val,val),brightness(input));
  popMatrix();
  return out;
}

color darken(color input, float val){
  color out;
  pushMatrix();
  colorMode(HSB);
  out = color(hue(input),saturation(input),brightness(input)/val);
  popMatrix();
  return out;
}
