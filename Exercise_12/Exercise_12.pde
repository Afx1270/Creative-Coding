int apples = 12;
int bananas = 7;
int oranges = 6;

void setup()
{
  size(500, 500);
}

void draw()
{
  background(255);
  textSize(50);
  fill(0);
  println(apples + oranges * bananas);
  text(apples + oranges * bananas, 220, 250);
}
