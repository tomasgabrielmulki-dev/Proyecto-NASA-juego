/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 020CD3D0
/// @DnDArgument : "code" "// // If hitpoints are over zero...$(13_10)if(hitpoints > 0)$(13_10){$(13_10)	// // Choose a random shooting sound effect.$(13_10)	var _sound = choose(snd_lightning_impact_1, snd_lightning_impact_2);$(13_10)$(13_10)	// Play the chosen sound.$(13_10)	audio_play_sound(_sound, 0, 0, 1.0, undefined, 1.0);$(13_10)$(13_10)	// // Destroy the other instance (the bullet)$(13_10)	with(other) instance_destroy();$(13_10)$(13_10)	// // Set the healthbar timer to 60.$(13_10)	// // Causing the healthbar to show for 60 game steps.$(13_10)	show_healthbar = 60;$(13_10)$(13_10)	// // Reduce hitpoints by the damage caused by the shooting weapon.$(13_10)	hitpoints += -global.shooting[? "damage"];$(13_10)$(13_10)	// // Create text popup to indicate damage.$(13_10)	var _text = instance_create_layer(x + 0, y + 0, "UpgradeScreen", obj_text_popup);$(13_10)$(13_10)	// // Set text to damage amount.$(13_10)	_text.text = -global.shooting[? "damage"];$(13_10)$(13_10)	// // Set our sprite to the hit sprite.$(13_10)	sprite_index = hit_sprite;$(13_10)	image_index = 0;$(13_10)$(13_10)	// // If our hitpoints has reached zero...$(13_10)	if(hitpoints <= 0)$(13_10){$(13_10)	// // Destroy this instance.$(13_10)		instance_destroy();$(13_10)}$(13_10)}"
// // If hitpoints are over zero...
if(hitpoints > 0)
{
	// // Choose a random shooting sound effect.
	var _sound = choose(snd_lightning_impact_1, snd_lightning_impact_2);

	// Play the chosen sound.
	audio_play_sound(_sound, 0, 0, 1.0, undefined, 1.0);

	// // Destroy the other instance (the bullet)
	with(other) instance_destroy();

	// // Set the healthbar timer to 60.
	// // Causing the healthbar to show for 60 game steps.
	show_healthbar = 60;

	// // Reduce hitpoints by the damage caused by the shooting weapon.
	hitpoints += -global.shooting[? "damage"];

	// // Create text popup to indicate damage.
	var _text = instance_create_layer(x + 0, y + 0, "UpgradeScreen", obj_text_popup);

	// // Set text to damage amount.
	_text.text = -global.shooting[? "damage"];

	// // Set our sprite to the hit sprite.
	sprite_index = hit_sprite;
	image_index = 0;

	// // If our hitpoints has reached zero...
	if(hitpoints <= 0)
{
	// // Destroy this instance.
		instance_destroy();
}
}