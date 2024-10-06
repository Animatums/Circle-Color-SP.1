// #11 This is our created class of "Circle"'s, which defines the circle objects.
// #12 Here is included our; circle variables, a constructor that initializes the circle's position, size, and then assigns them a random color afterwards.

class Circle {
  float x, y, size;
  color c;

  Circle(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.c = color(random(255), random(255), random(255));
  }

// #13 And as mentioned earlier, my function "display()", which draws the circle on the screen.

  void display() {
    fill(c);
    ellipse(x, y, size, size);
  }

// #14 Our method which calculates the distance from the mouse position to the center of the circle to check if the mouse is over one of the circles.

  boolean isMouseOver() {
    float d = dist(mouseX, mouseY, x, y);
    return d < size / 2;
  }

// #15 And in the end, the method which then assigns the clicked circle's color, if any, to a random new one.

  void changeColor() {
    c = color(random(255), random(255), random(255));
  }
}
