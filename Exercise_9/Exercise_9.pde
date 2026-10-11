
int x1 = 250;
int y1 = 250;

int x2 = 250;
int y2 = 250;

int x3 = 250;
int y3 = 250;

int x4 = 250;
int y4 = 250;

// Colour variables
int redCircle = color(255, 0, 0);
int blueCircle = color(0, 0, 255);
int greenCircle = color(0, 200, 0);
int purpleCircle = color(190, 0, 180);

void setup()
{
  size(500, 500);
}

void draw()
{
  background(255);

  // Circle 1: top-left
  fill(redCircle);
  ellipse(x1, y1, 60, 60);
  x1--;
  y1--;

  // Circle 2: top-right
  fill(blueCircle);
  ellipse(x2, y2, 60, 60);
  x2++;
  y2--;

  // Circle 3: bottom-left
  fill(greenCircle);
  ellipse(x3, y3, 60, 60);
  x3--;
  y3++;

  // Circle 4: bottom-right
  fill(purpleCircle);
  ellipse(x4, y4, 60, 60);
  x4++;
  y4++;
}
