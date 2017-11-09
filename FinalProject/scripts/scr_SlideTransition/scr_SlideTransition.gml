/// @desc scr_SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode between text, restart and goto.
/// @arg Target sets target room when using the goto mode.

with(obj_exit)
{
	mode = argument[0];
	if(argument_count > 1){
		target = argument[1];
	}
}