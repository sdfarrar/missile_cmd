/// @description Draw shots
if(!isAlive){
	return;
}

for(var i=0; i<shotsLeft; i++){
	var yPos = y;
	var xPos = x;
	
	if(i>0 && i<=2){
		yPos += sprite_height/2;
	}else if(i>2 && i<=5){
		yPos += sprite_height/2*2.5;
	}else if(i>5){
		yPos += sprite_height/2*4;
	}
	
	switch(i){
		case 1:
			xPos += sprite_width*-1;
			break;
		case 2:
			xPos += sprite_width*1;
			break;
		case 3:
			xPos += sprite_width*-2;
			break;
		case 4:
			xPos += sprite_width*0;
			break;
		case 5:
			xPos += sprite_width*2;
			break;
		case 6:
			xPos += sprite_width*-3;
			break;
		case 7:
			xPos += sprite_width*-1;
			break;
		case 8:
			xPos += sprite_width*1;
			break;
		case 9:
			xPos += sprite_width*3;
			break;
	}
	
	draw_sprite(spr_missile_ammo, -1, xPos, yPos);
}

