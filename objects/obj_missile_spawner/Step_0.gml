/// @description Reset alarm

if(alarm[0]==-1 && --shotsLeft>0){
	alarm[0]=timeout;
}