instance_create_depth(x, y, -500, gameMaster);
instance_create_depth(x, y, -500, objInterface);
instance_create_depth(room_width/2, (room_height/2) - 128, 0, objBall);
instance_create_depth(room_width/2 + floor(random(32)) - floor(random(32)), room_height - 248, 0, objPlayerRed);
instance_create_depth(room_width/2 + floor(random(32)) - floor(random(32)), 248, 0, objPlayerBlue);

//Doghouses - Red, spriteState = 0
with(instance_create_depth(176, 48, 0, objDoghouse)){spriteState = 1;}
with(instance_create_depth(432, 48, 0, objDoghouse)){spriteState = 1;}
with(instance_create_depth(688, 48, 0, objDoghouse)){spriteState = 1;}

//Doghouses - Blue, spriteState = 3
with(instance_create_depth(176, room_height - 208, 0, objDoghouse)){spriteState = 2;}
with(instance_create_depth(432, room_height - 208, 0, objDoghouse)){spriteState = 2;}
with(instance_create_depth(688, room_height - 208, 0, objDoghouse)){spriteState = 2;}