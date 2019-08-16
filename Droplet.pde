class Droplet{
  PVector pos; // Keep track droplet position
  PVector vel; // droplet velocity
  boolean off; // hit the ground, and die
  float size; 
  float len; // length 
  
  Droplet(float x, float y, float z){
    pos = new PVector(x,y,z);
    vel = new PVector();
    this.len = random(10);
  }
  
  void show(){
    strokeWeight(1.5);    
    line(pos.x, pos.y, pos.z, pos.x, pos.y + len, pos.z);
  }
  
  void update(){
    vel.add(gravity);
    pos.add(vel);
    // Hit the ground and splashed
    if(pos.y > height) {
      ss.init(pos.x, height, pos.z, vel.mag());
      off = true;
    }
  }
}
