
int total = 0;
int rate = 1;
void setup()
{
	size(300,300);
}
void draw()
{
	total = 0;
	background(255);
	for (int y = 0; y <= frameCount; y=y+30)
	{
		for (int x = 0; x <= frameCount; x=x+30)
		{
			//if (frameCount == rate*30)
			{
			Die theDie = new Die(x,y,30);
			theDie.show();	
			total = theDie.myNum + total;
			rate ++;
			}
		}
	}
	fill(0);
	textSize(30);
	text("You rolled " + total,10,300);
}
void mousePressed()
{
	redraw();
}



class Die //models one single dice cube
{
	int myX;
	int myY;
	int myW;
	int myNum;//variable declarations here
	
	Die(int x, int y, int w) //constructor
	{
		myW = w;
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		myNum = (int)(Math.random()*6+1);
	}
	void show()
	{
		fill((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
		rect (myX,myY,myW,myW);
		fill(0);

		if (myNum == 1)
		{
			ellipse(myX+myW/2,myY+myW/2,myW/10,myW/10);
		}
		else if (myNum == 2)
		{
			for (int x = 1; x <= myNum; x++)
			{
			ellipse(myX+x*(myW/3),myY+x*(myW/3),myW/10,myW/10);
			}
		}
		else if (myNum == 3)
		{
			for (int x = 1; x <= myNum; x++)
			{
			ellipse((myX+x*(myW/3))-(myW/3/2),myY+(x*(myW/3))-(myW/3/2),myW/10,myW/10);
		}

		}
		else if (myNum == 4)
		{
			for (int x = 1; x <= myNum; x++)
			{
			ellipse((myX+(myW/3))-(myW/3/2),myY+(myW/3)-(myW/3/2),myW/10,myW/10);
			ellipse((myX+3*(myW/3))-(myW/3/2),myY+(myW/3)-(myW/3/2),myW/10,myW/10);
			ellipse((myX+(myW/3))-(myW/3/2),myY+3*(myW/3)-(myW/3/2),myW/10,myW/10);
			ellipse((myX+3*(myW/3))-(myW/3/2),myY+3*(myW/3)-(myW/3/2),myW/10,myW/10);
			}
		}

		else if (myNum == 5)
		{
			for (int x = 1; x <= myNum; x++)
			{
			ellipse((myX+(myW/3))-(myW/3/2),myY+(myW/3)-(myW/3/2),myW/10,myW/10);
			ellipse((myX+3*(myW/3))-(myW/3/2),myY+(myW/3)-(myW/3/2),myW/10,myW/10);
			ellipse((myX+(myW/3))-(myW/3/2),myY+3*(myW/3)-(myW/3/2),myW/10,myW/10);
			ellipse((myX+3*(myW/3))-(myW/3/2),myY+3*(myW/3)-(myW/3/2),myW/10,myW/10);
			ellipse(myX+myW/2,myY+myW/2,myW/10,myW/10);
			}
		}
		else if (myNum == 6)
		{
			for (int x = 1; x <= myNum; x++)
			{
			if (x<4)
			ellipse((myX+(myW/3))-(myW/3/2),myY+x*(myW/3)-(myW/3/2),myW/10,myW/10);
			else
			ellipse(myX+(myW)-(myW/3/2),myY+(x-3)*(myW/3)-(myW/3/2),myW/10,myW/10);
			}
		}

	}
}
