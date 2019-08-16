class Splash {
  PVector pos;
  PVector vel;
  boolean off;
  float size;
  
  Splash(float x, float y, float z, float size) {
    this.pos = new PVector(x, y, z);
    this.size = random(0, pow(size,0.15));
    vel = PVector.random3D();
    vel.mult(random(size/4));
  }

  void update() {
    if (pos.y > height) {
      off = true;
      // Only inits another splashes if the size not too small
      if (size >1) {
        // Hit the ground and splashed
        ss.init(pos.x, height, pos.z, size);
      }
    } else {
      // Otherwise update it
      vel.add(gravity);
      pos.add(vel);
    }
  }

  void show() {
    strokeWeight(size);
    // the splash just a point
    point(pos.x, pos.y, pos.z);
  }
}
