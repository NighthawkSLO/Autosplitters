state("HotlineGL", "steam")
{
	int select_index :    "HotlineGL.exe", 0x7EC858, 8, 0x104, 4, 8;
	int menu_state :      "HotlineGL.exe", 0x7EC858, 8, 0x10C, 4, 8;
	int fade :            "HotlineGL.exe", 0x7EC858, 8, 0x11C, 4, 8;
	int grade :           "HotlineGL.exe", 0x7EC858, 8, 0x5AC, 4, 8;
	int showdown_paper :  "HotlineGL.exe", 0xBFFCD8, 0x15CC, 8;
	int time :            "HotlineGL.exe", 0xBFFCD8, 0x98C, 8;
	int player_dead :	  "HotlineGL.exe", 0x9F5D78, 0x204, 4, 8;
	int biker_dead :	  "HotlineGL.exe", 0x9F5D78, 0x204, 4, 8;
	double player_x :     "HotlineGL.exe", 0x9F5DC0, 4, 0, 8, 8, 0x50;
	double bike_climb :   "HotlineGL.exe", 0x9F66F4, 4, 0, 8, 8, 0x98;

	
	ushort room :         "HotlineGL.exe", 0xBFFC44, 8;
	
	ushort main_menu :    "HotlineGL.exe", 0x9F7534;
	ushort ig_menu:		  "HotlineGL.exe", 0x9F7640;
	ushort lvl_select :   "HotlineGL.exe", 0x9F7660;
	ushort lvl_intro :    "HotlineGL.exe", 0x9F7578;
	ushort biker_intro :  "HotlineGL.exe", 0x9F77A0;
	ushort part_screen :  "HotlineGL.exe", 0x9F75E0;
	ushort score_screen : "HotlineGL.exe", 0x9F75A8;
	ushort grade_screen : "HotlineGL.exe", 0x9F7728;
	ushort grocery_store :"HotlineGL.exe", 0x9F7674;
	ushort biker_flat:    "HotlineGL.exe", 0x9F7748;
	
	ushort decadence1 :   "HotlineGL.exe", 0x9F7584;
	ushort neighbors1 :	  "HotlineGL.exe", 0x9F7638;
	ushort neighbors4 :	  "HotlineGL.exe", 0x9F762C;
	ushort neighbors5 :   "HotlineGL.exe", 0x9F7670;
	ushort biker_fight :  "HotlineGL.exe", 0x9F7668;
	ushort deadline1 :    "HotlineGL.exe", 0x9F75E4;
	ushort trauma_intro : "HotlineGL.exe", 0x9F7700;
	ushort trauma0 :	  "HotlineGL.exe", 0x9F76A0;
	ushort trauma1:		  "HotlineGL.exe", 0x9F7698;
	ushort trauma2 :      "HotlineGL.exe", 0x9F769C;
	ushort trauma_outro : "HotlineGL.exe", 0x9F76FC;
	ushort assault1 :     "HotlineGL.exe", 0x9F7600;
	ushort vengeance1 :   "HotlineGL.exe", 0x9F7770;
	ushort vengeance3 :   "HotlineGL.exe", 0x9F7624;
	ushort showdown3 :    "HotlineGL.exe", 0x9F7730;
	ushort prankcall :    "HotlineGL.exe", 0x9F7740;
	ushort jacket_fight : "HotlineGL.exe", 0x9F7744;
	ushort resolution1 :  "HotlineGL.exe", 0x9F7774;
	ushort resolution2 :  "HotlineGL.exe", 0x9F7794;
}

state("HotlineGL", "gog")
{
	int select_index :    "HotlineGL.exe", 0x761E70, 8, 0x108, 4, 8;
	int menu_state :      "HotlineGL.exe", 0x761E70, 8, 0x10C, 4, 8;
	int fade :            "HotlineGL.exe", 0x761E70, 8, 0x11C, 4, 8;
	int grade :           "HotlineGL.exe", 0x761E70, 8, 0x5A8, 4, 8;
	int showdown_paper :  "HotlineGL.exe", 0x96BB6C, 8;
	int time :            "HotlineGL.exe", 0xB75254, 0x984, 8;
	int player_dead :	  "HotlineGL.exe", 0x96B5CC, 0x204, 4, 8;
	int biker_dead :	  "HotlineGL.exe", 0x96B2E8, 0x204, 4, 8;
	double player_x :     "HotlineGL.exe", 0x96B330, 4, 0, 8, 8, 0x50;
	double bike_climb :   "HotlineGL.exe", 0x96BC64, 4, 4, 8, 8, 0x98;

	
	ushort room :         "HotlineGL.exe", 0xB751C0, 8;
	
	ushort main_menu :    "HotlineGL.exe", 0x96CA8C;
	ushort ig_menu:		  "HotlineGL.exe", 0x96CB98;
	ushort lvl_select :   "HotlineGL.exe", 0x96CBB8;
	ushort lvl_intro :    "HotlineGL.exe", 0x96CAD0;
	ushort biker_intro :  "HotlineGL.exe", 0x96CCF8;
	ushort part_screen :  "HotlineGL.exe", 0x96CB38;
	ushort score_screen : "HotlineGL.exe", 0x96CB00;
	ushort grade_screen : "HotlineGL.exe", 0x96CC80;
	ushort grocery_store :"HotlineGL.exe", 0x96CBCC;
	ushort biker_flat:    "HotlineGL.exe", 0x96CCA0;
	
	ushort decadence1 :   "HotlineGL.exe", 0x96CADC;
	ushort neighbors1 :	  "HotlineGL.exe", 0x96CB90;
	ushort neighbors4 :	  "HotlineGL.exe", 0x96CB84;
	ushort neighbors5 :   "HotlineGL.exe", 0x96CBC8;
	ushort biker_fight :  "HotlineGL.exe", 0x96CBC0;
	ushort deadline1 :    "HotlineGL.exe", 0x96CB3C;
	ushort trauma_intro : "HotlineGL.exe", 0x96CC58;
	ushort trauma0 :	  "HotlineGL.exe", 0x96CBF8;
	ushort trauma1:		  "HotlineGL.exe", 0x96CBF0;
	ushort trauma2 :      "HotlineGL.exe", 0x96CBF4;
	ushort trauma_outro : "HotlineGL.exe", 0x96CC54;
	ushort assault1 :     "HotlineGL.exe", 0x96CB58;
	ushort vengeance1 :   "HotlineGL.exe", 0x96CCC8;
	ushort vengeance3 :   "HotlineGL.exe", 0x96CB7C;
	ushort showdown3 :    "HotlineGL.exe", 0x96CC88;
	ushort prankcall :    "HotlineGL.exe", 0x96CC98;
	ushort jacket_fight : "HotlineGL.exe", 0x96CC9C;
	ushort resolution1 :  "HotlineGL.exe", 0x96CCCC;
	ushort resolution2 :  "HotlineGL.exe", 0x96CCEC;
}

init{
	ProcessModuleWow64Safe module = modules.Single(x => String.Equals(x.ModuleName, "HotlineGL.exe", StringComparison.OrdinalIgnoreCase));
	
	byte[] exe512HashBytes = new byte[0];
	using (var sha = System.Security.Cryptography.SHA512.Create())
	{
		using (var s = File.Open(module.FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
		{
			exe512HashBytes = sha.ComputeHash(s); 
		} 
	}
    string exeHash = exe512HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);

    //print("init{} - read SHA512-Hash: " + exeHash);
	
	switch(exeHash) {
        case "BD2C5AA66CB09D0B8152740D2B87EF87D74A72C803E6F8A4ECB777EE9086B0018899A8261A85DB06A194DF73A370EC4C5706E68D502E1BD9CEAC3DB12451BAD9":
            version = "steam";
            break;
		case "264F2EB051089A38256CB80C3AB90DD1F29AFF25DDD453F97AD341ACBB3EFC14DE64E56032E905898ABDA1F4E42CB935EF975514F8CC94B27555AEB6B7DD8915":
            version = "gog";
            break;
        default:
            version = "unsupported";
			print("This version of Hotline is not supported by the autosplitter. Sorry :(");
            break;
    }
	
	/*
	if		(modules.First().ModuleMemorySize == 12718080)	{version = "steam";}
	else if	(modules.First().ModuleMemorySize == 12140544)	{version = "gog";}
	else {throw new Exception("triggerInit{} - pointer failed or returned a null. " + "Initialization is not done yet!");}
	*/
}

startup
{
	settings.Add("AL", false, "All Levels");
		settings.Add("AL_ss", false, "Start/Stop", "AL");
		settings.SetToolTip("AL_ss", "Just start and end split");
		settings.Add("AL_parts", false, "Parts", "AL");
		settings.SetToolTip("AL_parts", "Splits after \"Part X\" screens (except part 1)");
		settings.Add("AL_lvls", false,  "Levels", "AL");
		settings.SetToolTip("AL_lvls", "Splits on every Grade, Trauma doors, Showdown picture, and Prankcall bike");
		settings.Add("AL_floors", false, "Floors", "AL");
		settings.SetToolTip("AL_floors", "Splits every floor of every level");
		
	settings.Add("any%", false, "any%");
		settings.Add("any%_ss", false, "Start/Stop", "any%");
		settings.SetToolTip("any%_ss", "Just start and end split");
		settings.Add("any%_parts", false, "Parts", "any%");
		settings.SetToolTip("any%_parts", "Splits in the intro of Tension, Push It, Trauma and before the Part 5 screen");
		settings.Add("any%_lvls", false,  "Levels", "any%");
		settings.SetToolTip("any%_lvls", "Splits on every Grade, Trauma doors, Showdown picture, and Prankcall bike");
		settings.Add("any%_floors", false, "Floors", "any%");
		settings.SetToolTip("any%_floors", "Splits every floor of every level");
		
	settings.Add("IL", false, "Individual Levels");
		settings.Add("IL_level", false, "Full Level", "IL");
		settings.SetToolTip("IL_level", "This starts and stops Real Time and stop Game Time on all levels that have score screens. \nTo display IGT, change your active comparison or your layout to game Time.");
		settings.Add("IL_floor", false, "Floors", "IL");
		settings.SetToolTip("IL_floor", "Like Individual Levels setting, but splits on every screen transition.");
		
	settings.Add("igt", false, "Display IGT");
	settings.SetToolTip("igt", "This setting does nothing, but I hereby inform you that the splitter will ALWAYS track IGT, so you can display it during full game runs by adding a timer that displays Game Time (as opposed to Real Time)");
  
	settings.Add("death", false, "Track deaths in IGT");
	settings.SetToolTip("death", "This setting will track how much time you lost to a death or a level restart and add it to your IGT");
	
	settings.Add("death", false, "Track deaths in IGT");
	settings.SetToolTip("death", "This setting will track how much time you lost to a death or a level restart and add it to your IGT");
	
	// any%
	vars.split1 = false;
	vars.split2 = false;
	vars.split3 = false;
	vars.split4 = false;
	vars.traumaSkip = false;
	// All Levels
	vars.afterMetro = false;
	// ILs
	vars.startRoom = 0;
	// track Death
	vars.deathIGT = 0;
	vars.maxTime = 0;
	// split floors
	vars.onLevel = false;
	// game Running				// when the game is being closed, all pointers point to 0 and every comparison becomes true and causes false splits and other bullshit
	vars.gameRunning = false;	
}

update
{
	// vars.gameRunning
	if (current.room > 0) {
		vars.gameRunning = true;
	}
	else {
		vars.gameRunning = false;
	}	
	
	//	after Metro
	if (current.room == current.grocery_store) {
		vars.afterMetro = true;
	}
	
	//	Trauma Skip
	if (settings["any%"] && vars.gameRunning) {
		//	Trauma skip true
		if (current.room == current.trauma_outro && old.room != current.trauma_outro) {
			vars.traumaSkip = true;
		}
		//	Trauma skip false
		if (current.room == current.assault1 && old.room != current.assault1) {
			vars.traumaSkip = false;
		}
	}
	
	// startRoom
	if (settings["IL"] && ( (old.room == current.lvl_intro && current.room != current.lvl_intro) || (old.room == current.biker_intro && current.room != current.biker_intro) ) ) {
		vars.startRoom = current.room;
	}
	
	//for debugging
	//if (old.room != current.room) {print(current.room.ToString());}
}

start
{
	//	start All Levels
	if (settings["AL"] && current.room == current.main_menu && old.fade == 0 && current.fade == 1 && current.select_index == 0) {
		vars.afterMetro = false;
		vars.onLevel = false;
		vars.deathIGT = 0;
		vars.maxTime = 0;
		return true;
	}
	
	//	start any%
	if (settings["any%"] && current.room == current.lvl_select && current.menu_state == 1 && old.fade == 0 && current.fade == 1 && current.select_index == 0) {
		vars.split1 = false;
		vars.split2 = false;
		vars.split3 = false;
		vars.split4 = false;
		vars.traumaSkip = false;
		vars.afterMetro = false;
		vars.onLevel = false;
		vars.deathIGT = 0;
		vars.maxTime = 0;
		return true;
	}
	
	//	start ILs
	if ((settings["IL"])&& current.time > 0 && vars.startRoom != 0){
		vars.deathIGT = 0;
		vars.maxTime = 0;
		return true;
	}
}

reset
{
	// reset All Levels - in main menu or on game exit
	if ((settings["AL"] || !vars.afterMetro) && vars.gameRunning && current.room == current.main_menu && old.room != current.main_menu) {
		return true;
	}
	
	// reset ILs	//
	if (settings["IL"] && vars.gameRunning){
		//	reset when respawning to the first screen
		if (current.time == 0 && current.room == vars.startRoom) {
			return true;
		}
		//	reset in main menu
		if (current.room == current.main_menu) {
			vars.startRoom = 0;
			return true;
		}
	}
}

exit
{
	//	Reset on game exit except during Trauma Skip
	if (!vars.traumaSkip && settings.ResetEnabled && timer.CurrentPhase != TimerPhase.Ended) {
		new TimerModel() { CurrentState = timer }.Reset();
	}
}

split
{	
	//	end split (for every cat and Resolution IL)
	if ((current.room == current.resolution1 && old.bike_climb <= 0.30 && current.bike_climb > 0.30)) {
		return true;
	}
	
	//	split All Levels PARTS Urin/Jack - split at the end of Part screens
	if (settings["AL_parts"]  && vars.gameRunning &&
			vars.afterMetro == true && old.room == current.part_screen && current.room != current.part_screen) {
		return true;
	}
	
	//	split any% PARTS Urin	//
	if (settings["any%_parts"] && vars.gameRunning) {
		//	identify end of part
		if (current.room == current.decadence1)	{vars.split1 = true;}
		if (current.room == current.neighbors5) {vars.split2 = true;}
		if (current.room == current.deadline1) 	{vars.split3 = true;}
		if (current.room == current.showdown3) 	{vars.split4 = true;}	
		//	split Part 1
		if (vars.split1 && old.room != current.lvl_intro && current.room == current.lvl_intro) {
			vars.split1 = false;
			return true;
		}
		//	split Part 2
		if (vars.split2 && old.room != current.lvl_intro && current.room == current.lvl_intro) {
			vars.split2 = false;
			return true;
		}
		//	split Part 3
		if (vars.split3 && old.room != current.trauma_intro && current.room == current.trauma_intro) {
			vars.split3 = false;
			return true;
		}
		// split Part 4
		if (vars.split4 && old.room != current.part_screen && current.room == current.part_screen) {
			vars.split4 = false;
			return true;
		}
	}
	
	//	split LEVELS  any%/AL	//
	if ((settings["AL_lvls"] || settings["any%_lvls"]) && vars.gameRunning) {
		//	Grades
		if (old.grade == 0 && current.grade == 1){
			return true;
		}
		//	Trauma door
		if (current.room == current.trauma2 && old.player_x >= -32 && current.player_x < -32) {
			return true;
		}
		//	Showdown Photo
		if (current.room == current.showdown3 && old.showdown_paper == 0 && current.showdown_paper == 1) {
			return true;
		}
		//	Prankcall Bike
		if (current.room == current.prankcall && old.bike_climb <= 0.30 && current.bike_climb > 0.30) {
			return true;
		}
	}
	
	//	split FLOORS any%/AL	//
	if ((settings["any%_floors"] || settings["AL_floors"]) && vars.gameRunning) {
		//	Showdown Photo + Neighbors 4 + Vengeance 3
		if (current.room == current.showdown3 && old.showdown_paper == 0 && current.showdown_paper == 1				
				|| (current.room != current.neighbors4 && old.room == current.neighbors4 && old.room != current.ig_menu)
				|| (current.room != current.vengeance3 && old.room == current.vengeance3 && old.room != current.ig_menu) ) {
			vars.onLevel = false;
			return true;
		}
		// split new floor except Phon Hom and IG Menu
		if(vars.onLevel == true && old.room != current.room
				&& !(current.room == current.ig_menu || old.room == current.ig_menu) 
				&& !(current.room == current.biker_fight || old.room == current.biker_fight) 
				&& !(current.room == current.jacket_fight || old.room == current.jacket_fight) ) {
			return true;
		}
		// set onLevel = true in Intro and some other places
		if(current.room == current.lvl_intro || current.room == current.trauma0 || current.room == current.biker_intro || current.room == current.vengeance1 || current.room == current.neighbors1) {
			vars.onLevel = true;
		}
		// set onLevel = false in Score Screen and some other places
		if(current.room == current.score_screen || current.room == current.biker_flat || current.room == current.trauma_outro || current.room == current.resolution2){
			vars.onLevel = false;
		}
	}
	
	//	split ILs FULL	//
	if (settings["IL"] && current.room == current.score_screen && old.room != current.score_screen && vars.gameRunning) {
		vars.startRoom = 0;
		return true;
	}
	//	split IL FLOORS	//
	if (settings["IL_floor"] && old.room != current.room && current.room != current.ig_menu && old.room != current.ig_menu && vars.gameRunning) {
		return true;
	}
}

isLoading
{
	return true;
}

gameTime
{
	// Tracking deaths in IGT
	if (settings["death"]){
		//update maxTime
		if (current.time > vars.maxTime) {
			vars.maxTime = current.time;
		}
		// adding death to IGT
		if ( (old.player_dead == 1 && current.player_dead == 0) || (old.biker_dead == 1 && current.biker_dead == 0)) {
			vars.deathIGT += vars.maxTime - current.time;
			vars.maxTime = current.time;
		}
		// clear death and maxTime at score screen
		if (current.room != current.grade_screen && old.room == current.grade_screen) {
			vars.deathIGT = 0;
			vars.maxTime = 0;
		}
	}
	
	return TimeSpan.FromMilliseconds(Convert.ToInt32((current.time + vars.deathIGT)*1000/60));
}
