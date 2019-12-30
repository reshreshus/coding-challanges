class Box {
  PVector pos;
  // size
  float r;
  
  public Box(float x, float y, float z, float r) {
    pos = new PVector(x, y, z);
    this.r = r;
  }
  
  
  ArrayList<Box> generate() {
    ArrayList<Box> boxes = new ArrayList();
    float newR = r/3;
    for (int x = -1; x < 2; x++){
      for (int y = -1; y < 2; y++){
         for (int z = -1; z < 2; z++){
           int sum = abs(x) + abs(y) + abs(z);
           if (sum > 1) {
             Box b = new Box(pos.x + newR * x, 
             pos.y + newR * y, pos.z + newR * z, newR);
             boxes.add(b);
           }
        } 
      }  
    }
    return boxes;
  }
  
  void show() {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    fill(255,144,0);
    box(r);
    popMatrix();
  }
  
}
