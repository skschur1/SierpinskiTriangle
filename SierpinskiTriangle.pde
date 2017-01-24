int controlX = 56, controlY = 648;
boolean slider = false;
public void setup()
{
	size(600,700);
}
public void draw()
{
	background(200);
	fill(0);
	ellipse(50, 650, 10, 10);
	ellipse(550, 650, 10, 10);
	line(50, 650, 550, 650);
	fill(255);
	rect(controlX , controlY , 10, 5);
	fill(255);
	sierpinski(0, 600, 600, (int)sq((float)((int)((controlX - 55)/50)+1))); 
	if (slider && mouseX > 60 && mouseX < 540)
		controlX = mouseX - 5;
}
public void mousePressed()
{
	if (mouseX >= controlX && mouseX <= controlX + 10 && mouseY >= controlY && mouseY <= controlY+5 )
		slider = true;

}
public void mouseReleased() 
{
	slider = false;
}
public void sierpinski(int x, int y, int len, int min) 
{
	if (len <= min)
	{
		triangle(x, y, x + len, y, x + (len /2), y - len);
	}
	else 
	{
		sierpinski(x,y, len/2, min);
		sierpinski(x + len/2, y, len/2, min);
		sierpinski(x + len/4, y - len/2, len/2, min);
	}
}