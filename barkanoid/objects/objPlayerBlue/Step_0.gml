depth = -y;

//Check if ball is in range
if (point_distance(x, y, objBall.x, objBall.y) <= playerReach){ballInRange = true;}
else {ballInRange = false;}

//Check if this is a computer or human opponent
if (aiReactF < aiReact){aiReactF++;}
else {
switch(isAI)
{
	case false:
	break;
	
	case true:
	//Check if the Round is active
	if (global.roundEnd = false)
	{
		//Check Ball Location
			if (abs(x - objBall.x) > playerSpeed)
			{
				if (x < objBall.x) && (x < (room_width - 32 - (sprite_width/2))){
					if (abs(x - global.boundsX2) % playerSpeed != 0) && (abs(x - global.boundsX2) < playerSpeed){x += (abs(x - global.boundsX2) % playerSpeed);}
					else {x += playerSpeed;}
					}
					
				if (x > objBall.x) && (x > (32 + (sprite_width/2))){
					if (abs(x - global.boundsX1) % playerSpeed != 0) && (abs(x - global.boundsX1) > playerSpeed){x -= (abs(x - global.boundsX1) % playerSpeed);}
					else {x -= playerSpeed;}
					}
			}
	}
	break;
}
}