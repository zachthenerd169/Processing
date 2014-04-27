class Particle extends Point{
  
  /********************/
  /* Member Variables */
  /********************/
  float angle;
  float speed;
  
  /****************/
  /* Constructors */
  /****************/
  Particle(){
    super(); 
    angle = 0;
    speed = 0;
  }
  
  Particle(float _x, float _y){
    super(_x, _y);
    angle = 0;
    speed = 0;
  }
  
  Particle(float _x, float _y, float _angle, float _speed){
    super(_x, _y);
    angle = _angle;
    speed = _speed;
  }
  
  Particle(float _x, float _y, float _angle, float _speed, float _size){
    super(_x, _y, _size);
    angle = _angle;
    speed = _speed;
  }
  
  Particle(float _x, float _y, float _angle, float _speed, float _size, color _col){
    super(_x, _y, _size, _col);
    angle = _angle;
    speed = _speed;
  }
  
  /***********/
  /* Setters */
  /***********/
  void setAngle(float _angle){
    angle = _angle;
  }
  
  void setSpeed(float _speed){
    speed = _speed;
  }
  
  void setRandomAngle(){
    angle = random(TWO_PI);
  }
  
  void setRandomSpeed(float min, float max){
    speed = random(min,max);
  }
  
  void setRandomPosition(){
    super.setXY(random(width),random(height));
  }
  
  /***********/
  /* Getters */
  /***********/
  
  float getAngle(){
    return angle;
  }
  
  float getSpeed(){
    return speed;
  }
  
  /************/
  /* Mutators */
  /************/
  void updatePosition(){
    x += cos(angle)*speed;
    y += sin(angle)*speed;
  }
  
}
