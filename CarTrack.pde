Car car;
boolean loop;

void setup() {
  colorMode(HSB);
  size(800, 800);
  initArray();
  loop=false;
}

void draw() {
  background(255);
  if (loop) {
    car.moveX();
    car.replaceString("Volvo"+frameCount);
  }
  car.display();
}

void initArray() {
  car = new Car(40, height/2, 123, 2, "Volvo", 50);
}

void mousePressed() {
  loop=!loop;
}
