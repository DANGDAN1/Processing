class Ball {
  
  // instance variables - describe the object
  float x, y, radius, vx, vy, ax, ay;
  color fillColor;
  
  // constructor(s) - create an instance of the object
  public Ball(float x, float y, float radius, float vx,
              float vy, float ax, float ay, color fillColor) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.vx = vx;
    this.vy = vy;
    this.ax = ax;
    this.ay = ay;
    this.fillColor = fillColor;
  }
  public Ball(float x, float y, float radius, color fillColor) {
    this.x = x;
    this.y = y;
    vx = 0;
    vy = 0;
    ax = 0;
    ay = 0;
    this.radius = radius;
    this.fillColor = fillColor;
    }
  public Ball() {
    x = 0;
    y = 0;
    radius = 0;
    vx = 0;
    vy = 0;
    ax = 0;
    ay = 0;
    fillColor = color(0, 0, 0);
  }
  // class method(s) - manipulate the object
  void drawBall() {
    noStroke();
    fill(fillColor);
    circle(x, y, radius*2);
  }
  void moveBall() {
    x += vx;
    y += vy;
    if (vx > 0 && x > width) x = 0;
    if (vy > 0 && y > height) y = 0;
    if (vx < 0 && x < 0) x = width;
    if (vy < 0 && y < 0) y = height;  
  }
  void setVelocity(float vx, float vy) {
    this.vx = vx;
    this.vy = vy;
  }
  void setRadius(float radius) {
    this.radius = radius;
  }
  void setPosition(float x, float y) {
    this.x = x;
    this.y = y;
  }
  void setColor(color fillColor) {
    this.fillColor = fillColor;
  }
}
