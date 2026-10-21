//lists the days of the week as a variable to use later
String[] days = {
  "Monday", "Tuesday", "Wednesday",
  "Thursday", "Friday", "Saturday", "Sunday" // variable for the days of the week listed as an array
};
//the x position for each circle that is drawn, the rectangular brackets show that it is an array (a list of things)
int[] xPositions = {
  140, 380, 620, 860, 260, 500, 740
};
//the y position for each circle that is drawn, the rectangular brackets show that it is an array (a list of things)
int[] yPositions = {
  220, 220, 220, 220, 450, 450, 450
};

PFont Tittlefont;
PFont Normal;
PFont Week;

void setup() {
  size(1000, 850); //sets the size for the canvas

  Tittlefont = loadFont("BellMTItalic-48.vlw");
  Normal = loadFont("Calibri-LightItalic-48.vlw");
  Week = loadFont("Calibri-Bold-48.vlw");
}

void draw() {
  background(240, 232, 218); // sets the colour of the background

  // creates tittle and colours the etxt black while making sure the text is centered
  fill(80, 53, 2);
  textAlign(CENTER);
  textSize(24);
  textFont(Tittlefont, 32);
  text("Skin Diary", 500, 50);

  textSize(10);
  textFont(Normal, 18);
  text("Week 1", 400, 80);// sets subtittle for each week
  text("Week 2", 500, 80);
  text("Week 3", 600, 80);

  // draws the 7 circles and stops after i is greater than 7 which is the number of days
  for (int i = 0; i < days.length; i++) {

    // positions the circle
    int x = xPositions[i];
    int y = yPositions[i];

    // Draws the circle - this will repeatedly draw circles 60 times per second untill i > = 7
    noFill(); // the circles have no colour
    stroke(80, 53, 2); // the outline of the circle is black
    ellipse(x, y, 100, 100); // positions the circle and adjusts the size of the circle
    fill(80, 53, 2);
    line(x, y - 50, x, y + 50); // draws the line through the circle

    // Labels for daytime and night-time
    fill(80, 53, 2);
    textFont(Week, 18);
    textSize(15);

    text("AM", x - 25, y + 65);

    fill(80, 53, 2);
    textSize(15);
    text("PM", x + 25, y + 65);

    // draws the name of the day above the circle
    fill(80, 53, 2);
    textSize(16);
    textFont(Normal, 20);
    text(days[i], x, y - 65); // positions the text above the circle (y - 65) the -65 means that the tittle is 65 pixels higher than the circles that i created
  }
  stroke(80, 53, 2);
  strokeWeight(1);
  line(100, 650, 900, 650); // this will create the line that seperates the data from the key which will be used to read the data

  fill(80, 53, 2);
  textAlign(CENTER);
  textFont(Tittlefont, 20);
  textSize(26);
  text("Key", 500, 690);

  fill(80, 53, 2);
  textAlign(LEFT);
  textFont(Week, 16);
  text("COSRX Salicylic Acid Cleanser", 165, 735);

  fill(184, 111, 101);
  noStroke();
  ellipse(150, 730, 12, 12);
  
    fill(80, 53, 2);
  textAlign(LEFT);
  textFont(Week, 16);
  text("Medicube Vitamin C Toner Pads", 165, 765);
  
   fill(255, 206, 113);
  noStroke();
  ellipse(150, 760, 12, 12);
}
