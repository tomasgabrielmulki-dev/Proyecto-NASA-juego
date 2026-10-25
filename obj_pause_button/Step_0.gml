/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12827CFC
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(global.paused == true))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11DD3380
	/// @DnDComment : // Stores how many gamepad count.
	/// @DnDParent : 12827CFC
	/// @DnDArgument : "var" "_max_pads"
	/// @DnDArgument : "value" "gamepad_get_device_count()"
	var _max_pads = gamepad_get_device_count();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 262523D1
	/// @DnDComment : // Checks when at least 1 gamepad is present.
	/// @DnDParent : 12827CFC
	/// @DnDArgument : "var" "_max_pads"
	/// @DnDArgument : "op" "2"
	if(_max_pads > 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3F602993
		/// @DnDComment : // Checks the gamepad is connected.
		/// @DnDParent : 262523D1
		/// @DnDArgument : "expr" "gamepad_is_connected(0)"
		if(gamepad_is_connected(0))
		{
			/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
			/// @DnDVersion : 1.1
			/// @DnDHash : 703A1399
			/// @DnDComment : // Checks if gamepad button has been pressed.
			/// @DnDParent : 3F602993
			/// @DnDArgument : "btn" "gp_start"
			var l703A1399_0 = 0;
			var l703A1399_1 = gp_start;
			if(gamepad_is_connected(l703A1399_0) && gamepad_button_check_pressed(l703A1399_0, l703A1399_1))
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 08F5A773
				/// @DnDComment : // Play click sound effect.
				/// @DnDParent : 703A1399
				/// @DnDArgument : "soundid" "snd_ui_select"
				/// @DnDSaveInfo : "soundid" "snd_ui_select"
				audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 7C53AB38
				/// @DnDComment : // Create pause screen.
				/// @DnDParent : 703A1399
				/// @DnDArgument : "xpos" "1920 / 2"
				/// @DnDArgument : "ypos" "1080 / 2"
				/// @DnDArgument : "objectid" "obj_pause_screen"
				/// @DnDArgument : "layer" ""UpgradeScreen""
				/// @DnDSaveInfo : "objectid" "obj_pause_screen"
				instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_pause_screen);
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 4C0C5A10
				/// @DnDComment : // Call the pause function.
				/// @DnDParent : 703A1399
				/// @DnDArgument : "function" "pause"
				pause();
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 351601F9
				/// @DnDComment : // Sets released state to false.
				/// @DnDParent : 703A1399
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "has_released"
				has_released = false;
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 128160C4
				/// @DnDComment : // Ends event.
				/// @DnDParent : 703A1399
				exit;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7E2F1730
	/// @DnDComment : // Checks if the escape key has been released and the ecape key is now down.
	/// @DnDParent : 12827CFC
	/// @DnDArgument : "expr" "has_released && keyboard_check(vk_escape)"
	if(has_released && keyboard_check(vk_escape))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 19D8EF85
		/// @DnDComment : // Play click sound effect.
		/// @DnDParent : 7E2F1730
		/// @DnDArgument : "soundid" "snd_ui_select"
		/// @DnDSaveInfo : "soundid" "snd_ui_select"
		audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6CB14991
		/// @DnDComment : Create pause screen.
		/// @DnDParent : 7E2F1730
		/// @DnDArgument : "xpos" "1920 / 2"
		/// @DnDArgument : "ypos" "1080 / 2"
		/// @DnDArgument : "objectid" "obj_pause_screen"
		/// @DnDArgument : "layer" ""UpgradeScreen""
		/// @DnDSaveInfo : "objectid" "obj_pause_screen"
		instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_pause_screen);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2BFD49FB
		/// @DnDComment : Call the pause function.
		/// @DnDParent : 7E2F1730
		/// @DnDArgument : "function" "pause"
		pause();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D061426
		/// @DnDComment : // Sets released state to false.
		/// @DnDParent : 7E2F1730
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "has_released"
		has_released = false;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 05E0276C
		/// @DnDComment : // Ends event.
		/// @DnDParent : 7E2F1730
		exit;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 157761BD
	/// @DnDParent : 12827CFC
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 790214AD
		/// @DnDComment : // Checks if escape key is not pressed.
		/// @DnDParent : 157761BD
		/// @DnDArgument : "expr" "keyboard_check(vk_escape)"
		/// @DnDArgument : "not" "1"
		if(!(keyboard_check(vk_escape)))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 388E1658
			/// @DnDComment : // Sets released state to true.
			/// @DnDParent : 790214AD
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "has_released"
			has_released = true;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1071D8C7
	/// @DnDComment : If mouse is over this instance, adjusting for the GUI layer...
	/// @DnDInput : 4
	/// @DnDParent : 12827CFC
	/// @DnDArgument : "expr" "device_mouse_x_to_gui(0) > bbox_left"
	/// @DnDArgument : "expr_1" "device_mouse_x_to_gui(0) < bbox_right"
	/// @DnDArgument : "expr_2" "device_mouse_y_to_gui(0) > bbox_top"
	/// @DnDArgument : "expr_3" "device_mouse_y_to_gui(0) < bbox_bottom"
	if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 534D65EE
		/// @DnDComment : // Reduce target scale size.
		/// @DnDParent : 1071D8C7
		/// @DnDArgument : "expr" "0.95"
		/// @DnDArgument : "var" "target_scale"
		target_scale = 0.95;
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 16816AB3
		/// @DnDComment : // If left mouse button is pressed...
		/// @DnDParent : 1071D8C7
		var l16816AB3_0;
		l16816AB3_0 = mouse_check_button_pressed(mb_left);
		if (l16816AB3_0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 0893BA3F
			/// @DnDComment : // Play click sound effect.
			/// @DnDParent : 16816AB3
			/// @DnDArgument : "soundid" "snd_click"
			/// @DnDSaveInfo : "soundid" "snd_click"
			audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 036A6578
			/// @DnDComment : // Sets click state to true.
			/// @DnDParent : 16816AB3
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_clicked"
			is_clicked = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79F1E3AF
			/// @DnDComment : // Reduce target scale size further.
			/// @DnDParent : 16816AB3
			/// @DnDArgument : "expr" "0.9"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 0.9;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 286FA7B2
		/// @DnDComment : Checks if mouse has been clicked on this button.
		/// @DnDParent : 1071D8C7
		/// @DnDArgument : "var" "is_clicked"
		/// @DnDArgument : "value" "true"
		if(is_clicked == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 534D12E1
			/// @DnDComment : // Reduce target scale size further.
			/// @DnDParent : 286FA7B2
			/// @DnDArgument : "expr" "0.9"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 0.9;
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
			/// @DnDVersion : 1.1
			/// @DnDHash : 4EC5AEFE
			/// @DnDComment : If left mouse button is released...
			/// @DnDParent : 286FA7B2
			var l4EC5AEFE_0;
			l4EC5AEFE_0 = mouse_check_button_released(mb_left);
			if (l4EC5AEFE_0)
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 3F421B9C
				/// @DnDComment : // Play click sound effect.
				/// @DnDParent : 4EC5AEFE
				/// @DnDArgument : "soundid" "snd_ui_select"
				/// @DnDSaveInfo : "soundid" "snd_ui_select"
				audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1ACB7F63
				/// @DnDComment : Create pause screen.
				/// @DnDParent : 4EC5AEFE
				/// @DnDArgument : "xpos" "1920 / 2"
				/// @DnDArgument : "ypos" "1080 / 2"
				/// @DnDArgument : "objectid" "obj_pause_screen"
				/// @DnDArgument : "layer" ""UpgradeScreen""
				/// @DnDSaveInfo : "objectid" "obj_pause_screen"
				instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_pause_screen);
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 600731BF
				/// @DnDComment : Call the pause function.
				/// @DnDParent : 4EC5AEFE
				/// @DnDArgument : "function" "pause"
				pause();
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 71F39407
				/// @DnDComment : // Ends event.
				/// @DnDParent : 4EC5AEFE
				exit;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4E9C49F5
	/// @DnDParent : 12827CFC
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F3798C1
		/// @DnDComment : // Sets click state to false.
		/// @DnDParent : 4E9C49F5
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "is_clicked"
		is_clicked = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4475E67C
		/// @DnDComment : // Reset target scale size.
		/// @DnDParent : 4E9C49F5
		/// @DnDArgument : "expr" "1.0"
		/// @DnDArgument : "var" "target_scale"
		target_scale = 1.0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E6799CC
	/// @DnDComment : // Lerp scale values to target scale.
	/// @DnDInput : 2
	/// @DnDParent : 12827CFC
	/// @DnDArgument : "expr" "lerp(image_xscale, target_scale, 0.1)"
	/// @DnDArgument : "expr_1" "lerp(image_yscale, target_scale, 0.1)"
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "var_1" "image_yscale"
	image_xscale = lerp(image_xscale, target_scale, 0.1);
	image_yscale = lerp(image_yscale, target_scale, 0.1);
}