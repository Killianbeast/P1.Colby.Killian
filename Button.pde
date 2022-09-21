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
   fill(255, 0, 0);
   textSize(25);
   text(String.valueOf(btnIndex), x-20, y);
  }
  
  void btnclicked (float x2, float y2) {    // Grabs the position of the mouse when it is clicked
    if (x2 > x - btnw/2 && x2 < x + btnw/2 && y2 > y - btnh/2 && y2 < y + btnh/2) {      // Mouse cursor is within a button
      if (mousePressed) {    
        fill(255,0,0);
        ellipse(x, y, btnw, btnh);    // Creates a white circle in the same place as the button  
        textSize(128);
        text(String.valueOf(btnIndex), 100, 100);
      }
    }
  }
}
