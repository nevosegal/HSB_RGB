RGBcolour conHSB = new ConvertHSB(PI/3, 0.4, 0.5);
int newRed, newGreen, newBlue;
void setup() {
  size(200, 200);
  newRed = conHSB.redValue();
  newGreen = conHSB.greenValue();
  newBlue = conHSB.blueValue();
}

void draw() {
  background(newRed, newGreen, newBlue);
  text(newRed + ", " + newGreen + ", " + newBlue, 100, 180);
}

