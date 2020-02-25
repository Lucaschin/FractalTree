private double fractionLength = .8; 
private int smallestBranch = 11; 
private double branchAngle = .5;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	  
	stroke(#BF4242);
	line(320,480,320,380);   
	drawBranches(320,330,100, 3 * Math.PI/2);   

} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{
double angle1 = angle -branchAngle;   
double angle2 = angle + branchAngle; 
branchLength = branchLength * fractionLength;
int meow1 = (int)(branchLength * Math.cos(angle1)+x);
int meow2 = (int)(branchLength * Math.sin(angle1)+y);
int meow3 = (int)(branchLength * Math.cos(angle2)+x);
int meow4 = (int)(branchLength * Math.sin(angle2)+y);
line(x,y,meow1,meow2);
line(x,y,meow3,meow4);
if(branchLength > smallestBranch){
	drawBranches(meow1,meow2,branchLength,angle1);
	drawBranches(meow3,meow4,branchLength,angle2);
}
} 
