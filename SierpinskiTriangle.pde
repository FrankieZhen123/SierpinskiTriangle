color c = #00FFFF;
public void setup(){
  size(400,400);
  background(0);
}
public void draw(){
  int myX = 30;
  int myY = 350;
  int myLen = 160;
  sierpinski(myX,myY,myLen, c);
  sierpinski(myX+myLen,myY,myLen, c);
  sierpinski(myX+myLen/2,myY-myLen,myLen, c);
}
public void mousePressed(){
  int r = (int)(Math.random()*255);
  int g = (int)(Math.random()*255);
  int b = (int)(Math.random()*255);
  c = color(r, g, b);
}
public void sierpinski(int x, int y, int len, color c) {
  if(len <= 80){
    noFill();
    stroke(c);
    triangle((float)x,(float)y,(float)x+len, (float)y, (float)x+(len/2), (float)y-len);
  } else {
    sierpinski(x,y,len/2, c);
    sierpinski(x+len/2,y,len/2, c);
    sierpinski(x+len/4,y-len/2,len/2, c);
  }
}
