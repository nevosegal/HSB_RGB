class RGBcolour {

  float h, s, b;
  int i;
  float f, p, q, t;
  float red, green, blue;

  RGBcolour(float _h, float _s, float _b) {
    h = _h;
    s = _s;
    b = 255*_b;
    calculate();
  }

  void calculate() {
    i = floor(3*h/PI);
    f = (3*h/PI) - i;
    p = b*(1-s);
    q = b*(1-f*s);
    t = b*(1-(1-f)*s);
  }

  int redValue() {
    switch(i) {
    case 0:
      red = b;
      break;
    case 1:
      red = q;
      break;
    case 2:
      red = p;
      break;
    case 3:
      red = p;
      break;
    case 4:
      red = t;
      break;
    case 5:
      red = b;
      break;
    default:
      println("ERROR");
      break;
    }
    return ceil(red);
  }
  
  int greenValue() {
    switch(i) {
    case 0:
      green = t;
      break;
    case 1:
      green = b;
      break;
    case 2:
      green = b;
      break;
    case 3:
      green = q;
      break;
    case 4:
      green = p;
      break;
    case 5:
      green = p;
      break;
    default:
      println("ERROR");
      break;
    }
    return ceil(green);
  }
  
  int blueValue() {
    switch(i) {
    case 0:
      blue = p;
      break;
    case 1:
      blue = p;
      break;
    case 2:
      blue = t;
      break;
    case 3:
      blue = b;
      break;
    case 4:
      blue = b;
      break;
    case 5:
      blue = q;
      break;
    default:
      println("ERROR");
      break;
    }
    return ceil(blue);
  }
}

