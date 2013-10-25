RGBcolour c = new RGBcolour(PI/3, 0.4, 0.5);
int newRed, newGreen, newBlue;
void setup() {
  size(200, 200);
  newRed = c.redValue();
  newGreen = c.greenValue();
  newBlue = c.blueValue();
}

void draw() {
  background(newRed, newGreen, newBlue);
  text(newRed + ", " + newGreen + ", " + newBlue, 100, 180);
}

