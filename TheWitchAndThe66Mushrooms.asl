state("player") {
	double in_game :  "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0x54, 0x8, 0x118, 0x10, 0x4, 0x104, 0x28;
	double tutorial : "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0xD8, 0x10, 0x4, 0x104, 0x28;
	double hp :       "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0xFC, 0x4, 0x104, 0x28;
	double item_6 :   "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0xC, 0x4, 0x104, 0x28;
	double item_8 :   "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0xD8, 0x4, 0x104, 0x28;
	double item_12 :  "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0x9C, 0x4, 0x104, 0x28;
	double item_13 :  "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0x18, 0x4, 0x104, 0x28;
	double item_14 :  "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0x150, 0x4, 0x104, 0x28;
	double item_15 :  "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0x6C, 0x4, 0x104, 0x28;
	double item_16 :  "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0xC0, 0x4, 0x104, 0x28;
	double slime :    "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0x9C, 0x10, 0x8, 0x118, 0x4, 0x104, 0x28;
	double dwarves :  "player.exe", 0x7C4C8C, 0x44, 0x1C, 0x1C, 0x108, 0x0, 0xA8, 0x10, 0x8, 0x118, 0x4, 0x104, 0x28;
	double orb_hits : "player.exe", 0x7C4C8C, 0x48, 0x298, 0x8C, 0x168, 0x15C, 0x10, 0x3B8, 0x2F8, 0x24, 0x1C, 0x108, 0x0, 0x30, 0x4, 0x118, 0x4, 0x104, 0x28;
}

startup {
	settings.Add("sword",   true, "sword");
	settings.Add("scythe",  true, "scythe");
	settings.Add("slate",   true, "slate");
	settings.Add("slime",   true, "slime");
	settings.Add("sapling", true, "sapling");
	settings.Add("dwarf",   true, "7 dwarves");
	settings.Add("bow",     true, "bow");
	settings.Add("cat",     true, "cat");
	settings.Add("hammer",  true, "hammer");
	settings.Add("golem",   true, "ice golem");
	settings.Add("wolf",    true, "wolf");
	settings.Add("bbeard",  true, "blue beard");
	settings.Add("rorb",    true, "red orb");
	settings.Add("fball",   true, "fire ball");
	settings.Add("gorb",    true, "green orb");
	settings.Add("borb",    true, "blue orb");
	settings.Add("around",  true, "around the world");
	settings.Add("witch",   true, "thorn witch start");
	settings.Add("witche",  true, "thorn witch end");

	settings.SetToolTip("sword",   "splits when you enter the sword tutorial");
	settings.SetToolTip("scythe",  "splits when you enter the scythe tutorial");
	settings.SetToolTip("slate",   "splits when you get the slate");
	settings.SetToolTip("slime",   "splits when you defeat the slime boss");
	settings.SetToolTip("sapling", "splits when the sapling grows (white fade)");
	settings.SetToolTip("dwarf",   "splits when you defeat the 7 dwarves");
	settings.SetToolTip("bow",     "splits when you enter the bow tutorial");
	settings.SetToolTip("cat",     "splits when you enter the cat tutorial");
	settings.SetToolTip("hammer",  "splits when you enter the hammer tutorial");
	settings.SetToolTip("golem",   "splits when you defeat the ice golem boss");
	settings.SetToolTip("wolf",    "splits when you defeat the wolf boss");
	settings.SetToolTip("bbeard",  "splits when you defeat blue beard");
	settings.SetToolTip("rorb",    "splits when you get the red orb");
	settings.SetToolTip("fball",   "splits when you get the fire ball");
	settings.SetToolTip("gorb",    "splits when you get the green orb");
	settings.SetToolTip("borb",    "splits when you get the blue orb");
	settings.SetToolTip("around",  "splits when you go around the world as a cat");
	settings.SetToolTip("witch",   "splits when you start the thorn witch fight");
	settings.SetToolTip("witche",  "splits when you hit the 3rd orb on the thorn witch");

	vars.wolf = false;
	vars.golem = false;
}

update {
	vars.start = false;
	vars.reset = false;
	vars.split = false;

	if (old.in_game == 0.0 && current.in_game == 1.0) {
		vars.wolf = true;
		vars.golem = true;
		vars.start = true;
	}
	else if (old.in_game != 0.0 && current.in_game == 0.0) {
		vars.reset = true;
	}
	else {
		if (settings["golem"] && vars.golem && old.hp != 16.0 && current.hp == 16.0) {
			vars.golem = false;
			vars.split = true;
		}
		else if (settings["wolf"] && vars.wolf && old.hp != 20.0 && current.hp == 20.0) {
			vars.wolf = false;
			vars.split = true;
		}
		else vars.split =
			(settings["sword"]   && old.tutorial != 1.0 && current.tutorial == 1.0) ||
			(settings["scythe"]  && old.tutorial != 2.0 && current.tutorial == 2.0) ||
			(settings["slate"]   && old.item_6   != 1.0 && current.item_6   == 1.0) ||
			(settings["slime"]   && old.slime    != 4.0 && current.slime    == 4.0) ||
			(settings["sapling"] && old.dwarves  != 1.0 && current.dwarves  == 1.0) ||
			(settings["dwarf"]   && old.dwarves  != 4.0 && current.dwarves  == 4.0) ||
			(settings["bow"]     && old.tutorial != 3.0 && current.tutorial == 3.0) ||
			(settings["cat"]     && old.tutorial != 4.0 && current.tutorial == 4.0) ||
			(settings["hammer"]  && old.tutorial != 5.0 && current.tutorial == 5.0) ||
			(settings["bbeard"]  && old.item_12  != 1.0 && current.item_12  == 1.0) ||
			(settings["rorb"]    && old.item_15  != 1.0 && current.item_15  == 1.0) ||
			(settings["fball"]   && old.item_13  != 1.0 && current.item_13  == 1.0) ||
			(settings["gorb"]    && old.item_16  != 1.0 && current.item_16  == 1.0) ||
			(settings["borb"]    && old.item_14  != 1.0 && current.item_14  == 1.0) ||
			(settings["around"]  && old.item_8   != 1.0 && current.item_8   == 1.0) ||
			(settings["witch"]   && old.orb_hits != 0.0 && current.orb_hits == 0.0) ||
			(settings["witche"]  && old.orb_hits == 2.0 && current.orb_hits == 3.0);
	}
}

start {
	return vars.start;
}

reset {
	return vars.reset;
}

split {
	return vars.split;
}
