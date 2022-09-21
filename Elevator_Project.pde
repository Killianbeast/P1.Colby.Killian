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
  
  for (int i = 0; i < 11; i++) {      // This will create every button for the elevator interface. I could not figure out a better way to do this
   if (i >= 0 && i < 3) {    // First row
      btns.add(new Button(150, 800, BtnW, BtnH, i));
      i++;
      btns.add(new Button(300, 800, BtnW, BtnH, i));
      i++;
      btns.add(new Button(450, 800, BtnW, BtnH, i));
    } else if (i >= 3 && i < 6) {  // Second row
      btns.add(new Button(150, 700, BtnW, BtnH, i));
      i++;
      btns.add(new Button(300, 700, BtnW, BtnH, i));
      i++;
      btns.add(new Button(450, 700, BtnW, BtnH, i));
      i++;
    } else if (i >= 6 && i < 9) {    // Third row
      btns.add(new Button(150, 600, BtnW, BtnH, i));
      i++;
      btns.add(new Button(300, 600, BtnW, BtnH, i));
      i++;
      btns.add(new Button(450, 600, BtnW, BtnH, i));
    } else if (i >= 9 && i < 13) {    // Fourth row
      btns.add(new Button(150, 500, BtnW, BtnH, i));
      i++;
      btns.add(new Button(300, 500, BtnW, BtnH, i));
      i++;
      btns.add(new Button(450, 500, BtnW, BtnH, i));
      i++;
      btns.add(new Button(150, 400, BtnW, BtnH, i));
    } 
  }
}

void draw() {    // Draw function will constnatly listen for any sort of commands or updates that are sent to the screen
  fill(150);
  rect(100, 0, 400, 300);
  for (Button btn : btns) {    
    btn.create();  // Creates every button
    btn.btnclicked(mouseX, mouseY);    // Waits for the user to click on a button to activate 
  }
}
