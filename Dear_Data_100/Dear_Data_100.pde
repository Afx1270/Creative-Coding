PFont Tittlefont; // creates a variable which sets the name for the font

int[] circleX = {100, 250, 400, 600, 850, 750,
  150, 350, 500, 900, 650, 320}; // creates a variable which is an array and is used as the x axis of the circles
int[] circleY = { 140, 300, 290, 250, 180, 450,
  550, 650, 500, 600, 350, 400}; //creates a variable which is an array and is used as the y axis of the circles

int[] diamondX = {
  200, 420, 700, 900, 150, 350,
  600, 800, 250, 460, 750, 490
};//creates a variable which is an array and is used as the x axis of the Dimonds

int[] diamondY = {
  100, 180, 120, 350, 470, 550,
  650, 530, 200, 600, 300, 370
};//creates a variable which is an array and is used as the y axis of the Dimonds

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

color[] diamondColours = { // this array sets the colours of the dimonds
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

int[] keyX = {
  720, 720, 720, 720, 720, 720, 720, 720, 720, 720, 720, 720
};

int[] keyY = {
  155, 195, 235, 275, 315, 355, 395, 435, 475, 515, 555, 595
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
  text("SKIN DIARY", 500, 50); // sets title

  textSize(20);
  text("Week 1", 400, 80);// sets subtittle for each week with the same font as the title
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
  if (keyPressed && key == 'k')// if the key "k" is pressed and the and statement is true then draw a white box
  {
    stroke(0);
    strokeWeight(2);
    fill(255);
    rect(700, 75, 300, 600);

    fill(0);
    textAlign(LEFT);
    textSize(25);
    text("SKINCARE KEY", 720, 115);

    textAlign(LEFT);
    textSize(16);
    text("COSRX Salicylic Acid Cleanser", 740, 160);
    text("Medicube Vitamin C Toner Pads", 740, 200);
    text("Azelaic Acid", 740, 240);
    text("Beauty of Joseon SPF", 740, 280);
    text("Purito Retinol + Retinal Serum", 740, 320);
    text("Skin1004 Probio-Cica Moisturiser", 740, 360);
    text("Lip Mask", 740, 400);
    text("Nivea Thiamidol Serum", 740, 440);
    text("Whipped Ddalva Cleanser", 740, 480);
    text("Hyaluronic Acid Eye Patches", 740, 520);
    text("Mixoon Bean Essence", 740, 560);
    text("Hypochlorous Acid Mist", 740, 600);
    text("DAY", 740,645);
    text("NIGHT",840,645);
    stroke(0);
    fill(255);
    ellipse(800,638,20,20);
    quad(910, 630, 920, 640, 910, 650, 900, 640);
    
    for (int i = 0; i < 12; i++)
    {
      fill(circleColours[i]);
      ellipse(keyX[i], keyY[i], 20, 20);
    }
  }
}
