void setup() {
  size(650,650);
  background(0);
  int roseX, roseY, petalRadius, roseRadius;
  roseX = width/2;
  roseY = 240;
  petalRadius = 150;
  roseRadius = 150;
  size(650,650);
  noStroke();
  fill(70, 71, 20);
  rect(roseX - 17, roseY, 34, 500);
  beginShape();
  curveVertex(342,500);
  curveVertex(342,500);
  curveVertex(360,495);
  curveVertex(375,492);
  curveVertex(390,486);
  curveVertex(400,483);
  curveVertex(400,500);
  curveVertex(390,520);
  curveVertex(375,535);
  curveVertex(360,543);
  curveVertex(342,545);
  curveVertex(342,545);
  endShape();
  stroke(1);
  roseFractal(roseX, roseY, petalRadius, roseRadius, 2);
}

public void roseFractal(int x, int y, int rPetal, int rRose, int colorCount) {
  //rPetal is the radius of the individual petals
  //rRose is the radius from the center of the rose to the petal
  if(colorCount%2 == 0) {
    fill(225,0,0);
  } else {
    fill(255,3,62);
  }  
  if(rRose <= 5) {
    //go ring by ring and 8 petals per ring
    ellipse(x, y-rRose, rPetal, rPetal);
    ellipse((int)(x + (rRose/(Math.sqrt(2)))), (int)(y - (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x+rRose, y, rPetal, rPetal);
    ellipse((int)(x + (rRose/(Math.sqrt(2)))), (int)(y + (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x, y+rRose, rPetal, rPetal);
    ellipse((int)(x - (rRose/(Math.sqrt(2)))), (int)(y + (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x-rRose, y, rPetal, rPetal);
    ellipse((int)(x - (rRose/(Math.sqrt(2)))), (int)(y - (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    noStroke();
    fill(0);
    ellipse(x, y, 2.5, 2.5);
  } else if (rRose <= 20){
    ellipse(x, y-rRose, rPetal, rPetal);
    ellipse((int)(x + (rRose/(Math.sqrt(2)))), (int)(y - (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x+rRose, y, rPetal, rPetal);
    ellipse((int)(x + (rRose/(Math.sqrt(2)))), (int)(y + (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x, y+rRose, rPetal, rPetal);
    ellipse((int)(x - (rRose/(Math.sqrt(2)))), (int)(y + (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x-rRose, y, rPetal, rPetal);
    ellipse((int)(x - (rRose/(Math.sqrt(2)))), (int)(y - (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    roseFractal(x , y, rPetal/4*3, rRose-3, colorCount - 1);
  } else if (rRose <= 40){
    ellipse(x, y-rRose, rPetal, rPetal);
    ellipse((int)(x + (rRose/(Math.sqrt(2)))), (int)(y - (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x+rRose, y, rPetal, rPetal);
    ellipse((int)(x + (rRose/(Math.sqrt(2)))), (int)(y + (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x, y+rRose, rPetal, rPetal);
    ellipse((int)(x - (rRose/(Math.sqrt(2)))), (int)(y + (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x-rRose, y, rPetal, rPetal);
    ellipse((int)(x - (rRose/(Math.sqrt(2)))), (int)(y - (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    roseFractal(x , y, rPetal/4*3, rRose-10, colorCount - 1);
  } else if (rRose <= 100){
    ellipse(x, y-rRose, rPetal, rPetal);
    ellipse((int)(x + (rRose/(Math.sqrt(2)))), (int)(y - (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x+rRose, y, rPetal, rPetal);
    ellipse((int)(x + (rRose/(Math.sqrt(2)))), (int)(y + (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x, y+rRose, rPetal, rPetal);
    ellipse((int)(x - (rRose/(Math.sqrt(2)))), (int)(y + (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    ellipse(x-rRose, y, rPetal, rPetal);
    ellipse((int)(x - (rRose/(Math.sqrt(2)))), (int)(y - (rRose/(Math.sqrt(2)))), rPetal, rPetal);
    roseFractal(x , y, rPetal/4*3, rRose-25, colorCount - 1);
  } else {
    ellipse(x, y-rRose*85/100, rPetal, rPetal);
    ellipse((int)(x + (rRose/(Math.sqrt(2))) - 15), (int)(y - (rRose/(Math.sqrt(2))) + 15), rPetal, rPetal);
    ellipse(x+rRose*85/100, y, rPetal, rPetal);
    ellipse((int)(x + (rRose/(Math.sqrt(2))) - 15), (int)(y + (rRose/(Math.sqrt(2))) - 15), rPetal, rPetal);
    ellipse(x, y+rRose*85/100, rPetal, rPetal);
    ellipse((int)(x - (rRose/(Math.sqrt(2))) + 15), (int)(y + (rRose/(Math.sqrt(2))) - 15), rPetal, rPetal);
    ellipse(x-rRose*85/100, y, rPetal, rPetal);
    ellipse((int)(x - (rRose/(Math.sqrt(2))) + 15), (int)(y - (rRose/(Math.sqrt(2))) + 15), rPetal, rPetal);
    roseFractal(x , y, rPetal/4*3, rRose-60, colorCount - 1);
  }
}
