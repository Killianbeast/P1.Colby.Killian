class Button {
  int x, y, btnw, btnh;
  
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
}
