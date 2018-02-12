PFont roboto;
void setup() {
 size(700, 600);
 roboto = createFont("Roboto-Black", 10);
 textFont(roboto);
 textAlign(LEFT, TOP);
 textSize(20);
 textLeading(20);
 background(255);
 stroke(3);
}
void draw() {
  fill(255);
  rect(-10,-10,710,610);
  color a =color(150, 164, 139);
  color b =color(156, 168, 184);
  color c =color(131,200,206); 
  float y = 5;
  String[] lines = loadStrings("uniquewords.txt");
  while (y<600){
    float x = 5; 
    while (x<700){
      int r = int(random(lines.length));
      float xv = x+textWidth(lines[r]);
      if (xv<700){
        int rc = int(random(3));
        if (rc==0){
          fill(a);}
        if (rc==1){
          fill(b);} 
        if (rc==2){
          fill(c);}
        text (lines[r],x,y);
        x=x+textWidth(lines[r])+20;
        if (x>700){
          y=y+30;
        }
      }
      else{
        x=xv;
        y=y+30;
      }
    }
  } 

  noLoop();
}
void mousePressed() {
  if (mousePressed==true) {
    loop();
  }
}