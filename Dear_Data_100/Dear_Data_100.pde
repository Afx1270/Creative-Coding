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

PFont Tittlefont;
PFont Normal;
PFont Week;

void setup() {
  size(800, 600); //sets the size for the canvas

  Tittlefont = loadFont("BellMTItalic-48.vlw");
  Normal = loadFont("Calibri-LightItalic-48.vlw");
  Week = loadFont("Calibri-Bold-48.vlw");
}

void draw() {
  background(240, 232, 218); // sets the colour of the background

  // creates tittle and colours the etxt black while making sure the text is centered
  fill(80,53,2);
  textAlign(CENTER);
  textSize(24);
  textFont(Tittlefont, 32);
  text("Skin Diary", 400, 50);

  textSize(10);
  textFont(Normal, 18);
  text("Week 1      Week 2      Week 3", 400, 80);// sets subtittle for each week

  // draws the 7 circles and stops after i is greater than 7 which is the number of days
  for (int i = 0; i < days.length; i++) {

    // positions the circle
    int x = xPositions[i];
    int y = yPositions[i];

    // Draws the circle - this will repeatedly draw circles 60 times per second untill i > = 7
    noFill(); // the circles have no colour
    stroke(80,53,2); // the outline of the circle is black
    ellipse(x, y, 100, 100); // positions the circle and adjusts the size of the circle
    fill(80,53,2);
    line(x, y - 50, x, y + 50); // draws the line through the circle

    // Labels for daytime and night-time
    fill(80,53,2);
    textFont(Week, 18);
    textSize(15);

    text("AM", x - 25, y + 65);

    fill(80,53,2);
    textSize(15);
    text("PM", x + 25, y + 65);

    // draws the name of the day above the circle
    fill(80,53,2);
    textSize(16);
    textFont(Normal, 20);
    text(days[i], x, y - 65); // positions the text above the circle (y - 65) the -65 means that the tittle is 65 pixels higher than the circles that i created
  }
}
