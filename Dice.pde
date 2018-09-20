void setup()
{
	noLoop();
	size(300,300);
}
void draw()
{
	Die theDie = new Die(50,50);
	theDie.show();	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX;
	int myY;
	int myNum;//variable declarations here
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		myNum = (int)(Math.random()*7);
	}
	void show()
	{
		fill(255);
		rect (myX,myY,30,30);
		fill(0);

		if (myNum == 1)
		{
			ellipse(myX+15,myY+15,3,3);
		}
		else if (myNum == 2)
		{
			for (int x = 1; x <= myNum; x++)
			{
			ellipse(myX+x*10,myY+x*10,3,3);
			}
		}
		else if (myNum == 3)
		{
			for (int x = 1; x <= myNum; x++)
			ellipse(myX,myY+x*10,3,3);
		}

	}
}
