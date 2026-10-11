int apples = 53;
int bananas = 21;
int oranges = 17;
void setup()
{
  size(500, 500);
  fill(0);
  textSize(50);
}

void draw()

{
  background(255);
  int students = mouseX/50;

  text("students" + students, 50, 100);
  text("apples" + students, 50, 150);
  text("bananas" + students, 50, 200);
  text("oranges" + students, 50, 250);
}
