/// @description Insert description here
// You can write your code in this editor
// Transition

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
  
//MODE 0 = OFF
//MODE 1 = NEXT...
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;

