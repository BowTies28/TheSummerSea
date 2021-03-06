//Script is for handling checks for attack and stance switching
//Stance changes the way the player shoots
//Also sets the time and damage for each attack
//Initializing variables
bulletDmg = 1;
bulletTime = 60;


//Keyboard checks
shootCheck = keyboard_check(vk_space);
stanceCheck = keyboard_check_pressed(vk_lshift);

//Shooting
//Checks if the space is being pressed and if you are ready to shoot
if(shootCheck && argument1 == 2){
	//LONG RANGE STANCE
	if(argument0 == 0){
		//Creates a var of a bullet to manipulate it
		var bullet;
		//Creates the bullet
		bullet = instance_create_depth(x, y, 0,peaShot);
		//Adds values to the bullet
		with(bullet){
			speed = 7;
			direction = 90;
			alarm[0] = 240;
		}
		rechargeReady = 0;
	}
	//SHORT RANGE STANCE
	if(argument0 == 1){
		//Creates a var of a bullet to manipulate it
		var bullet1;
		//Creates the bullet
		bullet1 = instance_create_depth(x, y, 0,shortShot);
		//Adds values to the bullet
		with(bullet1){
			speed = 7;
			direction = 75;
			alarm[0] = 45;
		}
		var bullet2;
		bullet2 = instance_create_depth(x, y, 0,shortShot);
		with(bullet2){
			speed = 7;
			direction = 90;
			alarm[0] = 45;
		}
		var bullet3;
		bullet3 = instance_create_depth(x, y, 0,shortShot);
		with(bullet3){
			speed = 7;
			direction = 105;
			alarm[0] = 45;
		}
		rechargeReady = 0;
	}
}

