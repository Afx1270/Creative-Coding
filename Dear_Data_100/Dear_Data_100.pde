String[] days = {
  "Monday", "Tuesday", "Wednesday",
  "Thursday", "Friday", "Saturday", "Sunday"
};
void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  fill(0);
  textSize(24);
  text("My Skincare Data", 320, 50);
  line(400, 60, 400, 600);
  line(0, 120, 800, 120);
  text("Daytime", 150, 100);
  text("Nighttime", 550, 100);
 for (int i = 0; i < days.length; i++) {
  text(days[i], 30, 160 + i * 50);
}
for (int i = 0; i < days.length; i++) {
  text(days[i], 430, 160 + i * 50);
}
}
