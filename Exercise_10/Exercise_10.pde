int x = 300;
int y = 200;
void setup ()
{
  size(500, 500);
}

void draw()
{
    background(255);
    fill(200, 0, 150);
    ellipse(x, y, 60, 60);
    float(x--);
    float(y--);
    fill(0, 0, 150);
    ellipse(x, 100, 50, 50);
    float(x--);
    float(y--);
    fill(210, 0, 0);
    ellipse(250, -y, 40, 40);
    float(x--);
    float(y--);
  }
