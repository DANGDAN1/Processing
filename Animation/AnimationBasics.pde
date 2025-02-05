float x, y, radius, vx, vy, ax, ay, g;
color newColor;

Ball one;

void setup() {
  size(800, 600);
  g = 0.5;
  x = random(width);
  y = random(height);
  radius = random(40);
  vx = random(21) - 10;
  vy = random(21) - 10;
  newColor = color(random(256), random(256), random(256));
  one = new Ball(x, y, radius, vx, vy,0, 0, newColor);
}

void draw() {
  background(0);
  stroke(255);
  line(0, height * 7 / 8, width, height * 7 / 8);
  fill(255);
  one.drawBall();
  one.moveBall();
}
