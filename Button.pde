class Button {
  float x, y, btnw, btnh, btnIndex;
  //final int btnDis;
  
  Button(float x, float y, float btnw, float btnh, int btnIndex) {
   this.x = x;
   this.y = y;
   this.btnw = btnw;
   this.btnh = btnh;
   this.btnIndex = btnIndex;
  }
  
  void create() {
   fill(150);
   ellipse(x-35, y, 125, btnh+20);
   fill(0,0,0);
   ellipse(x, y, btnw, btnh);
   fill(0, 0, 0);
   textSize(25);
   if (btnIndex < 13) {
     text(String.format("%.0f", btnIndex), x-65, y);
   } else if (btnIndex == 13) {
     text("BELL", x-80, y+5);
  } else if (btnIndex == 14) {
    text("<|>", x-65, y+5);
  } else if (btnIndex == 15) {
    text(">|<", x-65, y+5);
  }
 }
  
  void btnclicked (float x2, float y2) {    // Grabs the position of the mouse when it is clicked
    if (x2 > x - btnw/2 && x2 < x + btnw/2 && y2 > y - btnh/2 && y2 < y + btnh/2) {      // Mouse cursor is within a button
      if (mousePressed) {    
        fill(255,0,0);
        ellipse(x, y, btnw, btnh);    // Creates a white circle in the same place as the button  
        textSize(50);
        int scrnX = scrnX((int) btnIndex);
        int scrnY = scrnY((int) btnIndex);
        if (btnIndex < 13) {
          text(String.format("%.0f", btnIndex), scrnX, scrnY);
        }
      }
    }
  }  
  int scrnX (int btnIndex) {
    switch(btnIndex) {
      case 1: case 2: case 3:
        return 100;
      case 4: case 5: case 6:
        return 175;
      case 7: case 8: case 9:
        return 250;
      case 10: case 11: case 12:
        return 325;
      default:
        return 50;
    }
  }
  
  int scrnY (int btnIndex) {
    switch(btnIndex) {
      case 1: case 4: case 7: case 10:
        return 50;
      case 2: case 5: case 8: case 11:
        return 125;
      case 3: case 6: case 9: case 12:
        return 200;
      default:
        return 50;
    }
  }
}
  
