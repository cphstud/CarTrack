Car car;
boolean loop;
Car[] cars;
int numOfCars;

void setup() {
  colorMode(HSB);
  numOfCars=5;
  size(800, 800);
  cars=new Car[numOfCars];
  initArray();
  loop=false;
}

void draw() {
  background(255);

  for (int i=0; i<cars.length; i++) {
    if (loop) {
      cars[i].moveX();
      cars[i].replaceString("Volvo"+frameCount);
    }
    cars[i].display();
  }
}


void initArray() {
  int diffFactor=height/numOfCars;
  int space=diffFactor/numOfCars;

  for (int i=0; i<cars.length; i++) {
    car = new Car(40, i*(diffFactor-space), 123, 2, "Volvo", 50);
    cars[i]=car;
  }
}

void mousePressed() {
  loop=!loop;
}
