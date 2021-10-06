class Car {
  int xPos, yPos, col, speed, direction, carWidth;
  String name;
  PFont f;

  Car(int xPosT, int yPosT, int colT, int speedT, String nameT, int carWT) {
    xPos=xPosT;
    yPos=yPosT;
    col=colT;
    speed=speedT;
    name=nameT;
    f=loadFont("Serif-24.vlw");
    direction=1;
    carWidth=carWT;
  }

  void display() {
    
    fill(col, 100, 200);
    rect(xPos, yPos, carWidth+20, carWidth);
    textFont(f, 16);
    fill(0);
    text(name, xPos+10, yPos+20);
    noFill();
    drawWheel();
  }

  void moveX() {
    xPos=xPos+(speed*direction);
  }
  
  void modifString(String add) {
    name=name+add;
  }
  
    void replaceString(String add) {
    name=add;
  }

  void drawWheel() {
    int wheelRedux=carWidth/5;
    fill(0);
    rect(xPos+wheelRedux, yPos-wheelRedux, 10, 10);
    rect(xPos+(carWidth-wheelRedux), yPos-wheelRedux, 10, 10);
    rect(xPos+wheelRedux, yPos+(carWidth), 10, 10);
    rect(xPos+(carWidth-wheelRedux), yPos+(carWidth), 10, 10);
    noFill();
  }
}
