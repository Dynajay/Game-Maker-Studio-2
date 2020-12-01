depth = -y;

//Checks if the ball is within reach
if (point_distance(x, y, objBall.x, objBall.y) > (playerReach * 16)){canHasBall = false;}
if (point_distance(x, y, objBall.x, objBall.y) <= (playerReach * 16)){canHasBall = true;}


//Check if this is a computer or human opponent
switch(isAI)
{
	case false:
		script_execute(controlPrelim); //To Be Deleted
		
		#region Catch Control
		//Checks to see if the ball is within reach
		if (point_distance(x, y, objBall.x, objBall.y) > (playerReach * 16)){canHasBall = false;}
		if (point_distance(x, y, objBall.x, objBall.y) <= (playerReach * 16)){canHasBall = true;}


		if (global.controlType[2] = "keyboard")
		{
			//NoCatch Boolean - Prevents holding the catch button before the ball reaches
			if (keyboard_check_pressed(global.controlBinding[2])) && (canHasBall = false){noCatch = true;}
			if (keyboard_check_released(global.controlBinding[2])) && (canHasBall = false){noCatch = false;}	

			//Catch Function
			if (keyboard_check_pressed(global.controlBinding[2])) && (canHasBall != false) && (noCatch = false){hasBall = true;}
			if (keyboard_check_released(global.controlBinding[2])) && (hasBall = true) && (noCatch = false){hasBall = false; with(objBall){direction = point_direction(x, y, mouse_x, mouse_y);}}
		}

		if (global.controlType[2] = "mouse")
		{
			if (mouse_check_button_pressed(global.controlBinding[2])) && (canHasBall != false){hasBall = true;}
			if (mouse_check_button_released(global.controlBinding[2])) && (hasBall = true){hasBall = false; with(objBall){direction = point_direction(x, y, mouse_x, mouse_y);}}
		}

		switch(hasBall)
		{
		case true:
		with(objBall){isHeld = true;}
		if (holdAlarm > 0){holdAlarm -= 1;}
		if (holdAlarm = 0){isHeld = false; holdAlarm = (playerBite + 2) * room_speed;}
		break;

		case false:
		with(objBall){isHeld = false;}
		break;
		}
		#endregion

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