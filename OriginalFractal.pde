 double fractionLength = .8; 
 int smallestBranch = 5; 
 double branchAngle = .4;  
int[] colors = {20,20,20,20,20};
public void setup() 
{   
  size(400,400);    
  background(173, 216, 230);   
}
public void draw() { 
  drawBranches(200, 400, 50, 0); 
}
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  if(branchLength < smallestBranch){
    return;
  }else{
    stroke(colors[(int)branchLength%5]);
    line(x,y,(float)(x + branchLength*Math.sin(angle)), (float)(y - branchLength*Math.cos(angle)));
    drawBranches((int)(x + branchLength*Math.sin(angle)), (int)(y - branchLength*Math.cos(angle)),branchLength*fractionLength, angle + branchAngle);
    drawBranches((int)(x + branchLength*Math.sin(angle)), (int)(y - branchLength*Math.cos(angle)),branchLength*fractionLength, angle - branchAngle);
  }
} 
