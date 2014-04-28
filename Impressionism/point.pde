class Point{
  
  /********************/
  /* Member Variables */
  /********************/
  float x;
  float y;
  float size;
  color col;
  float alpha;
  
  /****************/
  /* Constructors */
  /****************/
  Point(){
    x = 0;
    y = 0;
    size = 1;
    col = color(255);
  }
  
  Point(float _x, float _y){
    x = _x;
    y = _y;
    size = 1;
    col = color(255);
  }
  
  Point(float _x, float _y, float _size){
    x = _x;
    y = _y;
    size = _size;
    col = color(255);
  }
  
  Point(float _x, float _y, float _size, color _col){
    x = _x;
    y = _y;
    size = _size;
    col = _col; 
  }
  
  /***********/
  /* Setters */
  /***********/
  void setX(float _x){
    x = _x;
  }
  
  void setY(float _y){
    y = _y;
  }
  
  void setXY(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  void setSize(float _size){
    size = _size;
  }
  
  void setColor(color _col){
    col = _col;
  }
  
  void setColor(color _col, float _alpha){
    col = _col;
    alpha = _alpha;
  }
  /***********/
  /* Getters */
  /***********/
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
  float getSize(){
    return size;
  }
  
  color getColor(){
    return col;
  }
  
  void display(){
    pushMatrix();
    
    ellipseMode(CENTER);
    noStroke();
    fill(col, alpha);
    ellipse(x,y,size,size);
    
    popMatrix();
  }
}
