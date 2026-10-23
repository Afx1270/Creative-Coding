
int doubleNumber(int value) // this creates the name of a method and tells us that "value" is an integer
{
  return value*5; // this tells us what to do with the value so the main method 
}

void setup()
{
  int answer= doubleNumber(12);// this tells us to use the method called doubleNumber and input the value 12 and carry out the method on this value
  println(answer); // this gives us an output and this line tells processing to show us the output
}
