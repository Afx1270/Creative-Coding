int numberofapples = 53;
int numberofbananas = 21;
int numberoforanges = 17;
void setup()
{
  size(500, 500);
  fill(0);
  textSize(50);
}

void draw()

{
  background(255);
  text(numberofapples + numberoforanges + numberofbananas, 250, 250);
}
