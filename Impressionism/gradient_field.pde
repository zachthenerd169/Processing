class Gradient_Field{
  
  /********************/
  /* Member Variables */
  /********************/
  float scale;
  float zoffset;
  
  /****************/
  /* Constructors */
  /****************/
  Gradient_Field(){
    scale = 1.0;
    zoffset = 0;
  }
  
  Gradient_Field(long seed){
    noiseSeed(seed);
    scale = 1.0;
    zoffset = 0;
  }
  
  Gradient_Field(float _scale, float _zoffset){
    scale = _scale;
    zoffset = _zoffset;
  } 
  
  Gradient_Field(float _scale, float _zoffset, long seed){
    noiseSeed(seed);
    scale = _scale;
    zoffset = _zoffset;
  }
  
  /***********/
  /* Setters */
  /***********/
  void setScale(float _scale){
    scale = _scale;
  }
  
  void setZoffset(float _zoffset){
    zoffset = _zoffset;
  }
  
  void setSeed(long seed){
    noiseSeed(seed);
  }
  
  /***********/
  /* Getters */
  /***********/
  float getAngle(float x, float y){
    return noise(x*scale, y*scale, zoffset) * 2 * TWO_PI; // using 4PI to allow for changing from 0 to 2PI radians
  }
}
