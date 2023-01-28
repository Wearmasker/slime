// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateAct(){
 PlayerAnimateSprite();
 
 if (animationEnd)
 {
	 state = PlayerStateFree;
	 animationEnd = false;
	 show_debug_message(oPlayer);
	 if(animationEndScript != -1)
	 {
		 script_execute(animationEndScript);
		 animationEndScript = -1;
		 
	 }
}
}