/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29083E8A
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(global.paused == true))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 257C5485
	/// @DnDComment : Draw self.
	/// @DnDParent : 29083E8A
	draw_self();
}