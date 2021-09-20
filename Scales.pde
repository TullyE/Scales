int x, y, addAmt;

void setup() {
  background(random(255));
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
  x = 0;
  y = 0;
  addAmt = 25;
}
void draw()
{
  for(int i = 0; i < height; i += addAmt)
  {
    for(int j = 0; j < width; j += addAmt)
    {
      scale(j, i);
    }
  }
}
void scale(int x, int y)
{
  fill(random(255), random(255), random(255));
  if(x % 2 == 0 && y % 2 == 0)
  {
    fill(255, 0, 0);
  }
  beginShape();
  vertex(x, y);
  vertex(x + addAmt, y);
  vertex(x + addAmt/2, y + addAmt/2);
  vertex(x, y + addAmt);
  vertex(x + addAmt, y + addAmt);
  endShape(CLOSE);
}
