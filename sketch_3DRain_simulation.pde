RainSystem rs; // Downpour
SplashSystem ss; // Droplet hits the ground, and splashed 
PVector gravity = new PVector(0, 0.9, 0);

void setup() {
  fullScreen(P3D);
  stroke(255);
  rs = new RainSystem(20); // 20 drops per frame
  ss = new SplashSystem();
}

void draw() {
  background(0);
  rotateX(5.436); // Nice view from this angle
  rs.run(); // Pouring
  ss.run(); // Splashing
}
