class Button {
  int x, y, btnw, btnh;
  //boolean isClicked = false;
  
  Button(int x, int y, int btnw, int btnh) {
   this.x = x;
   this.y = y;
   this.btnw = btnw;
   this.btnh = btnh;
  }
  
  void create() {
   fill(0);
   ellipse(x, y, btnw, btnh); 
  }
  
  void btnclicked (int x2, int y2) {    // Grabs the position of the mouse when it is clicked
    if (x2 > x - btnw/2 && x2 < x + btnw/2 && y2 > y - btnh/2 && y2 < y + btnh/2) {      // Mouse cursor is within a button
      if (mousePressed == true) {    
        fill(255);
        ellipse(x, y, btnw, btnh);    // Creates a white circle in the same place as the button
      }
    }
  }
}
