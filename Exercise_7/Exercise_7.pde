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
  text("apples", 50, 150);
  text("bananas", 50, 200);
  text("oranges", 50, 250);  

  text((apples * students), 200, 150);  
  text((bananas * students), 250, 200);  
  text((oranges * students), 250, 250);  
}
