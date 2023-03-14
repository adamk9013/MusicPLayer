//Global Variables
float buttonScale;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float resumeX1, resumeY1, resumeX2, resumeY2, resumeWidth, resumeHeight;
float resumeScaleWidth, resumeScaleHeight;
float Playx1, Playy1, Playx2, Playy2, Playx3,Playy3;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3;
float previousX1, previousX2, previousX3, previousY1, previousY2, previousY3;
float previousrect1X1, previousrect1Y1, previousrect1Width, previousrect1Height;
float previousrect2X1, previousrect2Y1, previousrect2Width, previousrect2Height;
float skip1X1, skip1Y1, skip1X2, skip1Y2, skip1X3, skip1Y3;
float skip2X1, skip2Y1, skip2X2, skip2Y2, skip2X3, skip2Y3;
float rewind1X1, rewind1Y1, rewind1X2, rewind1Y2, rewind1X3, rewind1Y3;
float rewind2X1, rewind2Y1, rewind2X2, rewind2Y2, rewind2X3, rewind2Y3;
float LoopX1, LoopY1, LoopWidth, LoopHeight;
float LoopScaleWidth, LoopScaleHeight;
//
//
void setup() {
  //Landscape (portrait, square)
  fullScreen(); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //Population, visual data
 buttonScale= 1.5/5.0;
  float pauseButtonDrawX = displayWidth *1.0/2.0; 
  float pauseButtonDrawY = displayHeight * 1.0/2.0;
  //
  //
  pauseScaleWidth = 0.2/25.0; //used to change x-size;
  pauseScaleHeight = 0.2/3.0; //used to change y-axis
  resumeScaleWidth = 0.2/25.0; //used to chage x-axis
  resumeScaleHeight = 0.2/3.0; // used to change y-axis
  //
  println(pauseScaleWidth);
  pauseWidth = (pauseButtonDrawX*1/14)*buttonScale;
  pauseHeight = (pauseButtonDrawY*1/2)*buttonScale; 
  pauseX1 = pauseButtonDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = pauseButtonDrawY - (pauseHeight/2);
  pauseX2 = pauseButtonDrawX + (pauseWidth/2);
  pauseY2 = pauseY1;
  //
  //
  Playx1=pauseX1;
  Playy1=pauseY1;
  Playx2= Playx1;
  Playy2=pauseButtonDrawY + (pauseHeight/2); 
  Playx3=pauseX2 + pauseWidth;
  Playy3= pauseButtonDrawY;
  //
  //
  nextX1 = pauseX1+85;
  nextY1 = pauseY1;
  nextX2 = pauseX1+85;
  nextY2 = pauseButtonDrawY + (pauseHeight/2);
  nextX3 = pauseX2 + pauseWidth+85;
  nextY3 = pauseButtonDrawY;
  //
  //
  previousX1 = pauseX1-30;
  previousY1 = pauseY1;
  previousX2 = pauseX1-30;
  previousY2 = pauseButtonDrawY + (pauseHeight/2);
  previousX3 = pauseX2 + pauseWidth-150;
  previousY3 = pauseButtonDrawY;
  //
  //
  previousrect1X1 = pauseButtonDrawX +110;
  previousrect2X1 = pauseButtonDrawX -135;
  previousrect1Y1 = pauseButtonDrawY - (pauseHeight/2);
  previousrect2Y1 = pauseButtonDrawY - (pauseHeight/2);
  previousrect1Width = (pauseButtonDrawX*1/14)*buttonScale;
  previousrect2Width = (pauseButtonDrawX*1/14)*buttonScale;
  previousrect1Height = (pauseButtonDrawY*1/2)*buttonScale;
  previousrect2Height =  (pauseButtonDrawY*1/2)*buttonScale;
  //
  //
   skip1X1 = nextX1 +100;
   skip1Y1 = nextY1;
   skip1X2 = nextX1 +100;
   skip1Y2 = nextY2;
   skip1X3 = nextX3 +110;
   skip1Y3 = nextY3;
   //
   //
   skip2X1 = nextX1 +120;
   skip2Y1 = nextY1;
   skip2X2 = nextX1 +120;
   skip2Y2 = nextY2;
   skip2X3 = nextX3 +130;
   skip2Y3 = nextY3;
   //
   //
   //
   rewind1X1 = previousX1 -100;
   rewind1Y1 = previousY1;
   rewind1X2 = previousX1 -100;
   rewind1Y2 = previousY2;
   rewind1X3 = previousX3 -110;
   rewind1Y3 = previousY3;
   //
   //
   rewind2X1 = previousX1 -120;
   rewind2Y1 = previousY1;
   rewind2X2 = previousX1 -120;
   rewind2Y2 = previousY2;
   rewind2X3 = previousX3 -130;
   rewind2Y3 = previousY3;
  //
  // 
//
  LoopScaleWidth = 0.2/25.0; //used to change x-size;
  LoopScaleHeight = 0.2/3.0; //used to change y-axis
  LoopScaleWidth = 0.2/25.0; //used to chage x-axis
  LoopScaleHeight = 0.2/3.0; // used to change y-axis
  //
  //
LoopX1 =  rewind2X1 - 180;
LoopY1 =  rewind2Y1;
LoopWidth = (pauseButtonDrawX*5/14)*buttonScale;
LoopHeight = (pauseButtonDrawY*1/2)*buttonScale;
}//End setup
//
void draw() {
 fill(#FFFFFF);
 
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 72 );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 72);
  stroke(#000000);
  strokeWeight(5);
  rect(  LoopX1, LoopY1, LoopWidth, LoopHeight, 72);
  noStroke();
 noFill();
 fill(#30D5C8);
  rect(previousrect1X1, previousrect1Y1, previousrect1Width, previousrect1Height);
  rect(previousrect2X1, previousrect2Y1, previousrect2Width, previousrect2Height);
 noFill();
  fill(#000000);
  triangle( Playx1, Playy1, Playx2, Playy2, Playx3,Playy3);
 noFill();
 fill(#30D5C8);
  triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3);
  triangle( previousX1, previousY1, previousX2, previousY2, previousX3, previousY3);
 noFill();
 fill(#12A099);
 stroke(#FFFFFF);
 strokeWeight(2);
  triangle( skip1X1, skip1Y1, skip1X2, skip1Y2, skip1X3, skip1Y3);
  triangle( skip2X1, skip2Y1, skip2X2, skip2Y2, skip2X3, skip2Y3);
  triangle( rewind1X1, rewind1Y1, rewind1X2, rewind1Y2, rewind1X3, rewind1Y3);
  triangle( rewind2X1, rewind2Y1, rewind2X2, rewind2Y2, rewind2X3, rewind2Y3);
  noFill();
  
//
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
// 
