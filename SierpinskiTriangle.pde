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
	fill(255,1,1);
	rect(20, 20, 50, 50);
	fill(0);
	text("Don't\nClick", 35, 40);
	if ((mousePressed && mouseX >20 && mouseX < 70 && mouseY > 20 && mouseY < 70)|| keyPressed)
	{
		noLoop();
		danger();
	}
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
public void danger()
{
	fill(255,0,0);
	text("I WARNED YOU!", (float)Math.random()*600, (float) Math.random()*700);
	danger();
}
