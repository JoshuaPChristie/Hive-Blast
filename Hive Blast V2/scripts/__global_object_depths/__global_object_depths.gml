function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_bot
	global.__objectDepths[1] = 0; // obj_alien
	global.__objectDepths[2] = 0; // obj_alien2
	global.__objectDepths[3] = 0; // obj_alien3
	global.__objectDepths[4] = 0; // obj_boss
	global.__objectDepths[5] = 0; // obj_slime
	global.__objectDepths[6] = 0; // obj_slime2
	global.__objectDepths[7] = 0; // obj_slime3
	global.__objectDepths[8] = 0; // obj_slime4
	global.__objectDepths[9] = 0; // obj_slime5
	global.__objectDepths[10] = 0; // obj_slime6
	global.__objectDepths[11] = 0; // obj_slime7
	global.__objectDepths[12] = 0; // obj_slime8
	global.__objectDepths[13] = 0; // obj_bullet
	global.__objectDepths[14] = 0; // obj_wall
	global.__objectDepths[15] = 0; // obj_wall2
	global.__objectDepths[16] = 0; // obj_wall3
	global.__objectDepths[17] = 0; // obj_wall4
	global.__objectDepths[18] = 0; // obj_wall5
	global.__objectDepths[19] = 0; // obj_wall6
	global.__objectDepths[20] = 0; // obj_wall7
	global.__objectDepths[21] = 0; // obj_wall8
	global.__objectDepths[22] = 0; // obj_wall9
	global.__objectDepths[23] = 0; // obj_wall10
	global.__objectDepths[24] = 1; // obj_spawner
	global.__objectDepths[25] = 1; // object_boss_spawner
	global.__objectDepths[26] = 0; // obj_splat
	global.__objectDepths[27] = 0; // obj_alien_dead
	global.__objectDepths[28] = 0; // obj_boss_dead
	global.__objectDepths[29] = 0; // obj_bot_dead
	global.__objectDepths[30] = -1; // obj_health
	global.__objectDepths[31] = -2; // obj_boss_health
	global.__objectDepths[32] = 0; // obj_patrol_left
	global.__objectDepths[33] = 0; // obj_patrol_right
	global.__objectDepths[34] = 0; // obj_patrol_down
	global.__objectDepths[35] = 0; // obj_patrol_up
	global.__objectDepths[36] = 0; // obj_tripwire
	global.__objectDepths[37] = 0; // obj_barrier
	global.__objectDepths[38] = 0; // obj_boss_tripwire
	global.__objectDepths[39] = 0; // obj_health_pickup


	global.__objectNames[0] = "obj_bot";
	global.__objectNames[1] = "obj_alien";
	global.__objectNames[2] = "obj_alien2";
	global.__objectNames[3] = "obj_alien3";
	global.__objectNames[4] = "obj_boss";
	global.__objectNames[5] = "obj_slime";
	global.__objectNames[6] = "obj_slime2";
	global.__objectNames[7] = "obj_slime3";
	global.__objectNames[8] = "obj_slime4";
	global.__objectNames[9] = "obj_slime5";
	global.__objectNames[10] = "obj_slime6";
	global.__objectNames[11] = "obj_slime7";
	global.__objectNames[12] = "obj_slime8";
	global.__objectNames[13] = "obj_bullet";
	global.__objectNames[14] = "obj_wall";
	global.__objectNames[15] = "obj_wall2";
	global.__objectNames[16] = "obj_wall3";
	global.__objectNames[17] = "obj_wall4";
	global.__objectNames[18] = "obj_wall5";
	global.__objectNames[19] = "obj_wall6";
	global.__objectNames[20] = "obj_wall7";
	global.__objectNames[21] = "obj_wall8";
	global.__objectNames[22] = "obj_wall9";
	global.__objectNames[23] = "obj_wall10";
	global.__objectNames[24] = "obj_spawner";
	global.__objectNames[25] = "object_boss_spawner";
	global.__objectNames[26] = "obj_splat";
	global.__objectNames[27] = "obj_alien_dead";
	global.__objectNames[28] = "obj_boss_dead";
	global.__objectNames[29] = "obj_bot_dead";
	global.__objectNames[30] = "obj_health";
	global.__objectNames[31] = "obj_boss_health";
	global.__objectNames[32] = "obj_patrol_left";
	global.__objectNames[33] = "obj_patrol_right";
	global.__objectNames[34] = "obj_patrol_down";
	global.__objectNames[35] = "obj_patrol_up";
	global.__objectNames[36] = "obj_tripwire";
	global.__objectNames[37] = "obj_barrier";
	global.__objectNames[38] = "obj_boss_tripwire";
	global.__objectNames[39] = "obj_health_pickup";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
