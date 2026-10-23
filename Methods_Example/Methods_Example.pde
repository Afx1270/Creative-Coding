float x1 = 0;//sets vairable 
float y1 = 0;
float x2 = 3;
float y2 = 4;

void setup(){
  float answer = dist(x1,y1,x2,y2);// tells processing to find the distance between the points 
  println(answer);// tells us the answer 
}
