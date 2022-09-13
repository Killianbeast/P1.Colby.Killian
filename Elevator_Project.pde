int BtnW = 50;
int BtnH = 50;
Button btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9, btn10, btn11, btn12;

void setup() {
  size(600, 1000);
  background(255);
  ellipseMode(CENTER);
  btn1 = new Button(150, 400, BtnW, BtnH);
  btn2 = new Button(300, 400, BtnW, BtnH);
  btn3 = new Button(450, 400, BtnW, BtnH);
  btn4 = new Button(150, 300, BtnW, BtnH);
  btn5 = new Button(300, 300, BtnW, BtnH);
  btn6 = new Button(450, 300, BtnW, BtnH);
  btn7 = new Button(150, 200, BtnW, BtnH);
  btn8 = new Button(300, 200, BtnW, BtnH);
  btn9 = new Button(450, 200, BtnW, BtnH);
}

void draw() {
  btn1.create();
  btn2.create();
  btn3.create();
  btn4.create();
  btn5.create();
  btn6.create();
  btn7.create();
  btn8.create();
  btn9.create();
  //btn10.create();
  //btn11.create();
  //btn12.create();
}
