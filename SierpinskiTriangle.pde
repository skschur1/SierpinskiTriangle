int controlX = 50, controlY = 650;
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
	rect(controlX + 6, controlY - 2, 10, 5);
	fill(255);
	sierpinski(0, 600, 600, 5); 

}
public void mouseDragged()//optional
{
	if (mouseX >= controlX && mouseX <= controlX +10 && mouseY >= controlY && mouseY <= controlY+5)
		controlX = mouseX;
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