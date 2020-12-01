function controlPrelim() {
	//Move Left
	if (x > global.boundsX1 + ((currentSpriteWidth/2) + playerSpeed))
	{
	if (keyboard_check(ord("A")))
		{
			//Move by Remainder
			if (playerSpeed > abs((x + currentSpriteWidth/2) - global.boundsX1)) && ((abs((x + currentSpriteWidth/2) - global.boundsX1) % playerSpeed) != 0)
			{
				x -= (abs((x + currentSpriteWidth/2) - global.boundsX1) % playerSpeed);
			}

			if (playerSpeed < abs((x + currentSpriteWidth/2) - global.boundsX1))
			{
				x -= playerSpeed;
			}
		}
	}

	//Move Right
	if (x < global.boundsX2 - ((currentSpriteWidth/2) - playerSpeed))
	{
	if (keyboard_check(ord("D")))
		{
			//Move by Remainder
			if (playerSpeed > abs((x + currentSpriteWidth/2) - global.boundsX2)) && ((abs((x + currentSpriteWidth/2) - global.boundsX2) % playerSpeed) != 0)
			{
				x += (abs((x + currentSpriteWidth/2) - global.boundsX2) % playerSpeed);
			}

			if (playerSpeed < abs((x + currentSpriteWidth/2) - global.boundsX2))
			{
				x += playerSpeed;
			}
		}
	}
	//if (ballInRange != false) 


}
