state("HotlineGL", "steam")
{
	int select_index :    "HotlineGL.exe", 0x7EC858, 8, 0x104, 4, 8;
	int menu_state :      "HotlineGL.exe", 0x7EC858, 8, 0x10C, 4, 8;
	int fade :            "HotlineGL.exe", 0x7EC858, 8, 0x11C, 4, 8;
	int grade :           "HotlineGL.exe", 0x7EC858, 8, 0x5AC, 4, 8;
	int showdown_ketchup :"HotlineGL.exe", 0x7EC8B8, 8, 0x7C8, 4, 8;
	int showdown_paper :  "HotlineGL.exe", 0xBFFCD8, 0x15CC, 8;
	int time :            "HotlineGL.exe", 0xBFFCD8, 0x98C, 8;
	double player_x :     "HotlineGL.exe", 0x9F5DC0, 4, 0, 8, 8, 0x50;
	double bike_climb :   "HotlineGL.exe", 0x9F66F4, 4, 0, 8, 8, 0x98;

	ushort room :         "HotlineGL.exe", 0xBFFC44, 8;
	ushort zero :		  "HotlineGL,exe", 0x000000;
	ushort main_menu :    "HotlineGL.exe", 0x9F7534;
	ushort ig_menu:		  "HotlineGL.exe", 0x9F7640;
	ushort lvl_select :   "HotlineGL.exe", 0x9F7660;
	ushort lvl_intro :    "HotlineGL.exe", 0x9F7578;
	ushort part_screen :  "HotlineGL.exe", 0x9F75E0;
	ushort grocery_store :"HotlineGL.exe", 0x9F7674;
	ushort decadence :    "HotlineGL.exe", 0x9F7584;
	ushort neighbors :    "HotlineGL.exe", 0x9F7670;
	ushort deadline :     "HotlineGL.exe", 0x9F75E4;
	ushort trauma_intro : "HotlineGL.exe", 0x9F7700;
	ushort trauma1:		  "HotlineGL.exe", 0x9F7698;
	ushort trauma2 :      "HotlineGL.exe", 0x9F769C;
	ushort trauma_outro : "HotlineGL.exe", 0x9F76FC;
	ushort assault :      "HotlineGL.exe", 0x9F7600;
	ushort showdown :     "HotlineGL.exe", 0x9F7730;
	ushort bikerFlat:     "HotlineGL.exe", 0x9F7748;
	ushort prankcall :    "HotlineGL.exe", 0x9F7740;
	ushort resolution :   "HotlineGL.exe", 0x9F7774;
	ushort scorescreen :  "HotlineGL.exe", 0x9F75A8;
}

state("HotlineGL", "gog")
{
	int select_index :    "HotlineGL.exe", 0x761E70, 8, 0x108, 4, 8;
	int menu_state :      "HotlineGL.exe", 0x761E70, 8, 0x10C, 4, 8;
	int fade :            "HotlineGL.exe", 0x761E70, 8, 0x11C, 4, 8;
	int grade :           "HotlineGL.exe", 0x761E70, 8, 0x5A8, 4, 8;
	int showdown_ketchup :"HotlineGL.exe", 0x761E70, 8, 0x7C8, 4, 8;	//don't work//
	int showdown_paper :  "HotlineGL.exe", 0x96BB6C, 8;
	int time :            "HotlineGL.exe", 0x96BB6C, 0x98C, 8;			//don't work//	
	double player_x :     "HotlineGL.exe", 0x96B330, 4, 0, 8, 8, 0x50;
	double bike_climb :   "HotlineGL.exe", 0x96BC64, 4, 4, 8, 8, 0x98;

	ushort room :         "HotlineGL.exe", 0xB751C0, 8;
	ushort zero :		  "HotlineGL,exe", 0x000000;
	ushort main_menu :    "HotlineGL.exe", 0x96CA8C;
	ushort ig_menu:		  "HotlineGL.exe", 0x96CB98;
	ushort lvl_select :   "HotlineGL.exe", 0x96CBB8;
	ushort lvl_intro :    "HotlineGL.exe", 0x96CAD0;
	ushort part_screen :  "HotlineGL.exe", 0x96CB38;
	ushort grocery_store :"HotlineGL.exe", 0x96CBCC;
	ushort decadence :    "HotlineGL.exe", 0x96CADC;
	ushort neighbors :    "HotlineGL.exe", 0x96CBC8;
	ushort deadline :     "HotlineGL.exe", 0x96CB3C;
	ushort trauma_intro : "HotlineGL.exe", 0x96CC58;
	ushort trauma1:		  "HotlineGL.exe", 0x96CBF0;
	ushort trauma2 :      "HotlineGL.exe", 0x96CBF4;
	ushort trauma_outro : "HotlineGL.exe", 0x96CC54;
	ushort assault :      "HotlineGL.exe", 0x96CB58;
	ushort showdown :     "HotlineGL.exe", 0x96CC88;
	ushort bikerFlat:     "HotlineGL.exe", 0x96CCA0;
	ushort prankcall :    "HotlineGL.exe", 0x96CC98;
	ushort resolution :   "HotlineGL.exe", 0x96CCCC;
	ushort scorescreen :  "HotlineGL.exe", 0x96CB00;	
}

init{
	if		(modules.First().ModuleMemorySize == 12718080)	{version = "steam";}
	else if	(modules.First().ModuleMemorySize == 12140544)	{version = "gog";}
}

startup
{
	settings.Add("ssAL", false, "All Levels - Start/Stop");
	settings.SetToolTip("ssAL", "Just start and end split");
	settings.Add("buffitAL", false,  "All Levels - Every Level (Buffet) (use this)");
	settings.SetToolTip("buffitAL", "Splits on every Grade, Trauma doors, Showdown picture, and Prankcall bike");
	settings.Add("uj_AL", false, "All Levels - Parts (Urin/Jack)");
	settings.SetToolTip("uj_AL", "Splits after \"Part X\" screens (except part 1)");
	settings.Add("ssAny", false, "any% - Start/Stop");
	settings.SetToolTip("ssAny", "Just start and end split");
	settings.Add("buffitAny", false,  "any% - Every Level (Buffet) (use this)");
	settings.SetToolTip("buffitAny", "Splits on every Grade, Trauma doors, Showdown picture, and Prankcall bike");
	settings.Add("u_any", false, "any% - Parts (Urin)");
	settings.SetToolTip("u_any", "Splits in the intro of Tension, Push It, Trauma and after the Part 5 screen");
	settings.Add("j_any", false, "any% - Parts (Jack)");
	settings.SetToolTip("j_any", "Splits in the intro of Tension, Push It, Trauma and before the Part 5 screen");
	settings.Add("IL", false, "Individual Levels");
	settings.SetToolTip("IL", "it sorta works - but not withj the GoG version");
	
	// any%
	vars.split1 = false;
	vars.split2 = false;
	vars.split3 = false;
	vars.split4 = false;
	vars.startAny = false;
	vars.traumaSkip = false;
	// All Levels
	vars.startAL = false;
	vars.afterMetro = false;
	// ILs
	vars.startRoom = 0;
}

update
{
	// any% splits
	if (current.room > 0 && current.room == current.decadence) 	{vars.split1 = true;}
	if (current.room > 0 && current.room == current.neighbors) 	{vars.split2 = true;}
	if (current.room > 0 && current.room == current.deadline) 	{vars.split3 = true;}
	if (current.room > 0 && current.room == current.showdown) 	{vars.split4 = true;}
	
	// Trauma skip
	if ((settings["u_any"] || settings["j_any"] || settings["buffitAny"] || settings["ssAny"]) && 
			current.room > 0 && current.room == current.trauma_outro && old.room != current.trauma_outro)	{vars.traumaSkip = true;}
	if (current.room > 0 && current.room == current.assault && old.room != current.assault) 				{vars.traumaSkip = false;}
	
	// after Metro
	if (current.room == current.grocery_store) {vars.afterMetro = true;}
	
	// start variables
	if (old.fade == 0 && current.fade == 1 && current.select_index == 0 && current.room == current.lvl_select && current.menu_state == 1) 	{vars.startAny = true;} // any%
	if (old.fade == 0 && current.fade == 1 && current.select_index == 0 && current.room == current.main_menu) 								{vars.startAL = true;}  // All Levels
	
	//for debugging
	//if (old.room != current.room) {print(current.room.ToString());}
	
	
}

start
{
	// start All Levels
		if ((settings["uj_AL"] || settings["ssAL"] || settings["buffitAL"]) && vars.startAL) {
		vars.startAL = false;
		vars.afterMetro = false;
		return true;
	}
	// start any%
	if ((settings["u_any"] || settings["j_any"] || settings["ssAny"] || settings["buffitAny"]) && vars.startAny) {
		vars.startAny = false;
		vars.split1 = false;
		vars.split2 = false;
		vars.split3 = false;
		vars.split4 = false;
		vars.traumaSkip = false;
		vars.afterMetro = false;
		return true;
	}
	// start ILs
	if (settings["IL"] && current.time > 0 && current.room != current.trauma1){
		vars.startRoom = current.room;
		return true;
	}
	//start IL Trauma
	if (settings["IL"] && current.room == current.trauma1 && old.room != current.trauma1){
		return true;
	}
}

reset
{
	// (Alt+F4) on game exit - except during Trauma skip
	//if (current.room == current.zero && !vars.traumaSkip){
	//	return true;
	//}
	// All Levels / ILs - reset in main menu or on game exit
	if ((settings["uj_AL"] || settings["ssAL"] || settings["buffitAL"] || settings["IL"] || !vars.afterMetro) && 
			current.room > 0 && current.room == current.main_menu && old.room != current.main_menu){
		return true;
	}
	// ILs - reset when respawning to the first screen
	if (settings["IL"] &&
			current.room == vars.startRoom && current.time == 0){
		return true;
	}
	// ILs - reset on Trauma 1
	if (settings["IL"] && 
			current.room == current.trauma1 && old.room != current.trauma1){
		return true;
	}
}

exit
{
	//Reset on game exit escept during Trauma Skip
	if (!vars.traumaSkip){
		new TimerModel() { CurrentState = timer }.Reset();
	}
}

split
{	
	// end split
	if ((current.room == current.resolution && old.bike_climb <= 0.30 && current.bike_climb > 0.30)){
		return true;
	}
	
	// All Levels Urin/Jack - split Parts
	if (settings["uj_AL"] &&
			vars.afterMetro == true && old.room == current.part_screen && current.room != current.part_screen) {
		return true;
	}
	
	//		any% URIN/JACK		//
	// split part 1
	if ((settings["u_any"] || settings["j_any"]) && 
			(vars.split1 && old.room != current.lvl_intro && current.room == current.lvl_intro)) {
		vars.split1 = false;
		return true;
	}
	// split part 2
	if ((settings["u_any"] || settings["j_any"]) && 
			(vars.split2 && old.room != current.lvl_intro && current.room == current.lvl_intro)) {
		vars.split2 = false;
		return true;
	}
	// split part 3
	if ((settings["u_any"] || settings["j_any"]) && 
			(vars.split3 && old.room != current.trauma_intro && current.room == current.trauma_intro)) {
		vars.split3 = false;
		return true;
	}
	// Urin - split part 4
	if (settings["u_any"] && 
			(vars.split4 && old.room == current.part_screen && current.room != current.part_screen)) {
		vars.split4 = false;
		return true;
	}
	// Jack - split part 4
	if (settings["j_any"] && 
			(vars.split4 && old.room != current.part_screen && current.room == current.part_screen)) {
		vars.split4 = false;
		return true;
	}
	
	//		BUFFIT  	//
	// Grades
	if ((settings["buffitAL"] || settings["buffitAny"]) &&
			(old.grade == 0 && current.grade == 1)){
		return true;
	}
	// Trauma door
	if ((settings["buffitAL"] || settings["buffitAny"]) &&
			(current.room == current.trauma2 && old.player_x >= -32 && current.player_x < -32)){
		return true;
	}
	// Showdown Photo
	if ((settings["buffitAL"] || settings["buffitAny"]) &&
			(current.room == current.showdown && old.showdown_paper == 0 && current.showdown_paper == 1)){
		return true;
	}
	// Prankcall Bike
	if ((settings["buffitAL"] || settings["buffitAny"]) &&
			(current.room == current.prankcall && old.bike_climb <= 0.30 && current.bike_climb > 0.30)){
		return true;
	}
	
	//		INDIVIDUAL LEVELS		//
	// ILs
	if (settings["IL"] && 
			old.room != current.scorescreen && current.room == current.scorescreen){
		return true;
	}
	// IL - Trauma
	if (settings["IL"] && 
			old.room == current.trauma2 && current.room != current.trauma2){
		return true;
	}
	// IL - Showdown
	if (settings["IL"] && 
			old.room == current.showdown && current.room != current.showdown){
		return true;
	}
	// IL - Prankcall
	if (settings["IL"] && 
			old.room != current.bikerFlat && current.room == current.bikerFlat){
		return true;
	}
}
