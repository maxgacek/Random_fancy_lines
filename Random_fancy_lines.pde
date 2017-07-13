
//by Max Gacek 01.02.2017

//controls
//  R - for restart the animation
//  I - for values info

float t;
float lines;
float R;

void setup(){
 background(20);
 size(800,800);
 frameRate(50);
}

void draw(){
  
 background(20);
 // hard reset
 if (keyPressed) {
    if (key == 'r' || key == 'R') {
      background(20);
      H = floor(random(-150,150));
      D = ceil(random(-150,150));
      R = ceil(random(10,50));
      lines = ceil(random(50,100));
      stroke= random(0.25,2);
    }
 }
 // display info
if (keyPressed) {
    if (key == 'i' || key == 'I') {
      
      // INFO HUD
      textSize(32);
      fill(150, 150, 150);
      text("H: " + H, 10, 30); 
      text("D: " + D, 10, 60); 
      text("R: " + R, 10, 90); 
      text("Lines: " + lines, 10, 120); 
      text("Stroke: " + stroke, 10, 150); 
      text("FPS: " + ceil(frameRate), 650, 30); 
      
    }
 } 
 
   stroke(255);
   strokeWeight(stroke);
   translate(width/2 , height/2);
 //point(x1(t),y1(t));
 //point(x2(t),y2(t));
 for ( int i = 0; i < lines; i++){  
   line (x1(t*3 + i) , y1(t*3 + 3*i) , x2(t*2 + 3*i) , y2(t*2 + 3*i));
 }
 t++;
}

float H = floor(random(-150,150));
float D = ceil(random(-150,150));
float stroke = random(0.05,2.25);
float x1(float t) {
 return sin(t/R) * H + sin(t/D) * 55;
}
float y1(float t) {
 return cos(t/R) * H; 
}
float x2(float t) {
 return sin(t/R) * -H + sin(t/D) * 55;
}
float y2(float t) {
 return cos(t/R) * -H + cos(t/D) * 55; 
}