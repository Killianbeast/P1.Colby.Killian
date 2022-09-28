// Created by Colby Killian for CS 3366 Human Computer Interaction
// This program is a design sketch of the elevator system in the Texas Tech Media and Communication Office Tower Building
// R11552865

final int BtnW = 50;
final int BtnH = 50;
int btnIndex = 0;
ArrayList<Button> btns = new ArrayList<Button>();

void setup() {
  size(600, 1000);
  background(255);
  ellipseMode(CENTER);
  rectMode(CORNER);
  
  for (int i = 1; i <= 16; i++) {      // This will create every button for the elevator interface. I could not figure out a better way to do this
   if (i >= 1 && i < 4) {    // First row
      btns.add(new Button(150, 800, BtnW, BtnH, 1));
      i++;
      btns.add(new Button(300, 800, BtnW, BtnH, 2));
      i++;
      btns.add(new Button(450, 800, BtnW, BtnH, 3));
    } else if (i >= 4 && i < 7) {  // Second row
      btns.add(new Button(150, 700, BtnW, BtnH, 4));
      i++;
      btns.add(new Button(300, 700, BtnW, BtnH, 5));
      i++;
      btns.add(new Button(450, 700, BtnW, BtnH, 6));
    } else if (i >= 7 && i < 10) {    // Third row
      btns.add(new Button(150, 600, BtnW, BtnH, 7));
      i++;
      btns.add(new Button(300, 600, BtnW, BtnH, 8));
      i++;
      btns.add(new Button(450, 600, BtnW, BtnH, 9));
    } else if (i >= 10 && i < 13) {    // Fourth row
      btns.add(new Button(150, 500, BtnW, BtnH, 10));
      i++;
      btns.add(new Button(300, 500, BtnW, BtnH, 11));
      i++;
      btns.add(new Button(450, 500, BtnW, BtnH, 12));
    } else if (i >= 13 && i < 16) {
      btns.add(new Button(150, 900, BtnW, BtnH, 13));
      i++;
      btns.add(new Button(300, 900, BtnW, BtnH, 14));
      i++;
      btns.add(new Button(450, 900, BtnW, BtnH, 15));
    }
  }
  
  for (Button btn : btns) {    
    btn.create();  // Creates every button
  }
  
  //fill(150);
  //rect(100, 0, 400, 300);
  triangle(225, 375, 275, 425, 325, 375);
  triangle(225, 365, 275, 315, 325, 365);
  noLoop();
}

void draw() {    // Draw function will constnatly listen for any sort of commands or updates that are sent to the screen
  fill(150);
  rect(100, 0, 400, 300);
  for (Button btn : btns) {
    btn.btnclicked(mouseX, mouseY);
  }
  
}

void mousePressed() {
  redraw();
}
