PFont Tittlefont;

int[] circleX = {100, 250, 400, 600, 850, 750,
  150, 350, 500, 900, 650, 320};
int[] circleY = { 140, 300, 290, 250, 180, 450,
  550, 650, 500, 600, 350, 400};

int[] diamondX = {
  200, 420, 700, 900, 150, 350,
  600, 800, 250, 460, 750, 490
};

int[] diamondY = {
  100, 180, 120, 350, 470, 550,
  650, 530, 200, 600, 300, 370
};

color[] circleColours = { // this array sets the colours of the circles
  color(255, 60, 60),
  color(255, 140, 0),
  color(255, 220, 40),
  color(120, 255, 60),
  color(0, 230, 150),
  color(0, 220, 255),
  color(60, 130, 255),
  color(130, 80, 255),
  color(220, 70, 255),
  color(255, 80, 170),
  color(255, 120, 100),
  color(190, 255, 100)
};

color[] diamondColours = { // this array sets the colours of the circles
  color(255, 60, 60),
  color(255, 140, 0),
  color(255, 220, 40),
  color(120, 255, 60),
  color(0, 230, 150),
  color(0, 220, 255),
  color(60, 130, 255),
  color(130, 80, 255),
  color(220, 70, 255),
  color(255, 80, 170),
  color(255, 120, 100),
  color(190, 255, 100)
};


void setup()
{
  size(1000, 750);
  Tittlefont = loadFont("Calibri-Bold-48.vlw");
}

void draw()
{
  background(0);

  fill(255);
  textAlign(CENTER);
  textSize(30);
  textFont(Tittlefont, 30);
  text("SKIN DIARY", 500, 50); // sets tittle

  textSize(20);
  text("Week 1", 400, 80);// sets subtittle for each week
  text("Week 2", 500, 80);
  text("Week 3", 600, 80);

  for (int i = 0; i < 12; i++) // Repeats for every coordinate in the array,
    // increasing i by one each time to select the next position.
  {
    fill(circleColours[i]);// this will also go through the for loop until i=5 that is when the sattement wil be false and it will stop creating circles and changing it colours
    noStroke();
    ellipse(circleX[i], circleY[i], 70, 70);
  }

  for (int i = 0; i < 12; i++)
  {
    fill(diamondColours[i]);// the [i] tells processing which colour to look at first to start the loop
    noStroke();

    quad(
      diamondX[i], diamondY[i]-40,
      diamondX[i]+40, diamondY[i],
      diamondX[i], diamondY[i]+40,
      diamondX[i]-40, diamondY[i]
      );
  }
}
