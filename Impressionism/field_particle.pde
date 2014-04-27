class Field_Particle extends Particle{
  /********************/
  /* Member Variables */
  /********************/
  Gradient_Field field;
  
  /****************/
  /* Constructors */
  /****************/
  Field_Particle(){
    super();
    field = new Gradient_Field();
    super.setAngle(field.getAngle(x,y));
  }
  
  Field_Particle(float _x, float _y){
    super(_x, _y);
    field = new Gradient_Field();
    super.setAngle(field.getAngle(x,y));
  }
  
  Field_Particle(float _x, float _y, float _speed){
    super(_x, _y, 0, _speed);
    field = new Gradient_Field();
    super.setAngle(field.getAngle(x,y));
  }
  
  Field_Particle(float _x, float _y, float _speed, float _size){
    super(_x, _y, 0, _speed, _size);
    field = new Gradient_Field();
    super.setAngle(field.getAngle(x,y));
  }
  
  Field_Particle(float _x, float _y, float _speed, float _size, color _col){
    super(_x, _y, 0, _speed, _size, _col);
    field = new Gradient_Field();
    super.setAngle(field.getAngle(x,y));
  }
  
  /***********/
  /* Setters */
  /***********/
  void setScale(float _scale){
    field.setScale(_scale);
  }
  
  void setZoffset(float _zoffset){
    field.setZoffset(_zoffset);
  }
  
  /************/
  /* Mutators */
  /************/
  void updatePosition(){
    super.setAngle(field.getAngle(x,y));
    super.updatePosition();
  }
}
