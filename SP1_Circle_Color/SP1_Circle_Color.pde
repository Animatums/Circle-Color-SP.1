// #1 The first part defines 2 datastructures; our "circleSizes" a array which contains the 7 different circle sizes, and their values.
// #2 The second datastructure; An ArrayList, which saves our Object of the type "Circle", which will be defined later in the code. + And the inclusion of the total showed number of "Circle"'s.

int[] circleSizes = {20, 30, 50, 70, 90, 110, 130};
ArrayList<Circle> circles = new ArrayList<Circle>();
int numCircles = 12;

// #3 Our setup of the window, which will be shown in our set pixel amount. 
// #4 A creation of a "for-loop" that iterates our earlier mentioned "numCircles", in this case 12. And for each iteration a random position in (x, y) is generated, + a random size is seleceted from "circleSizes". 
// #5 In the end there's an added random multiplier to slightly vary the size of our created circles. --> And then each "circle" is stored as an object in the "circles" list.

void setup() {
  size(600, 600);
  
  for (int i = 0; i < numCircles; i++) {
    float x = random(width);
    float y = random(height);
    int randomSize = circleSizes[(int)random(circleSizes.length)];
    float sizeMultiplier = random(0.5, 1.5);
    Circle circle = new Circle(x, y, randomSize * sizeMultiplier);
    circles.add(circle);
  }
}

// #6 Here i've created a "draw()" method, which is called repeatedly, to set the background to a clear white color.
// #7 And added a for-loop which iterates over our "circles" list, and then class the "display()" method/function, for each and every circle to draw them.

void draw() {
  background(255);
  for (Circle circle : circles) {
    circle.display();
  }
}

// #8 Shortly added a minor method which allows us to change the color of the formerly created circles, by clicking on them.
// #9 The for-loop created here checks if the mouse is over any of the circles by calling "isMouseOver()". 
// #10 And if the mouse is over and clicks on one of the circles, it will then change color, by calling the "changeColor".

void mousePressed() {
  for (Circle circle : circles) {
    if (circle.isMouseOver()) {
      circle.changeColor();
    }
  }
}
