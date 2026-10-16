//lists the days of the week as a variable to use later
String[] days = {
  "Monday", "Tuesday", "Wednesday",
  "Thursday", "Friday", "Saturday", "Sunday" // variable for the days of the week listed as an array
};
//the x position for each circle that is drawn, the rectangular brackets show that it is an array (a list of things)
int[] xPositions = {
  100, 300, 500, 700, 200, 400, 600
};
//the y position for each circle that is drawn, the rectangular brackets show that it is an array (a list of things)
int[] yPositions = {
  200, 200, 200, 200, 430, 430, 430
};

void setup() {
  size(800, 600); //sets the size for the canvas
}

void draw() {
  background(255); // sets the colour of the background

  // creates tittle and colours the etxt black while making sure the text is centered
  fill(0);
  textAlign(CENTER);
  textSize(24);
  text("My Skincare Data", 400, 50);

  // draws the 7 circles and stops after i is greater than 7 which is the number of days
  for (int i = 0; i < days.length; i++) {

    // positions the circle
    int x = xPositions[i];
    int y = yPositions[i];

    // Draws the circle - this will repeatedly draw circles 60 times per second untill i > = 7
    noFill(); // the circles have no colour
    stroke(0); // the outline of the circle is black
    ellipse(x, y, 100, 100); // positions the circle and adjusts the size of the circle
    fill(0);
    line(x, y - 50, x, y + 50); // draws the line through the circle

    // Labels for daytime and night-time
    fill(255,218,3);
    textSize(16);

    text("D", x - 25, y + 5);
    
    fill(39,2,193);
    textSize(16);
    text("N", x + 25, y + 5);

    // draws the name of the day above the circle
    fill(0);
    textSize(14);
    text(days[i], x, y - 65); // positions the text above the circle (y - 65) the -65 means that the tittle is 65 pixels higher than the circles that i created
  }
}
