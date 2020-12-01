depth = -y;

//Checks ball location
//if (y < global.blueZone){global.roundEnd = true;}	//Player Red Wins!
//if (y > global.redZone){global.roundEnd = true;}	//Player Blue Wins!

//Angle Nudge
if (abs(direction - 180) < 33){direction += (33 - abs(direction - 180));}

//Isometric Y
isoY = abs(abs(y - (room_height/2)) - (room_height/2))/(room_height/2) * 128;

if (speed > ballSpeed){speed -= 0.001;}
else {speed = ballSpeed;}