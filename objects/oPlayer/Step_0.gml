/// @description Insert description here
// You can write your code in this editor
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space); 
keyAttack = keyboard_check_pressed(vk_shift) || keyboard_check(ord("J"));

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);



if (!global.gamePaused)
{
script_execute(state);   
invulnerable = max(invulnerable-1,0);
}
depth = -bbox_bottom;