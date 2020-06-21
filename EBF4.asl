state("EBF4") {
	int BATTLE :     "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x30, 0x4C;
	int MAP :        "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x30, 0x50;
	int MAIN_MENU :  "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x30, 0x54;
	int gameState :  "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x30, 0x58;

	bool hasAxe :    "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x28, 0xFB4, 0x10, 0x1CC, 0x20;
	bool hasHammer : "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x28, 0xFB4, 0x10, 0x1D0, 0x20;
	
	int playTime :   "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x28, 0x10D4, 0x10, 0x40;

	bool battleEnd : "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x28, 0xDBC, 0x10, 0x3C;

	int waveSize :   "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x28, 0xDBC, 0x10, 0x80, 0x18;
	bool foe1Dead :  "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x28, 0xDBC, 0x10, 0x80, 0x10, 0x8, 0x27;
	bool foe2Dead :  "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x28, 0xDBC, 0x10, 0x80, 0x10, 0xC, 0x27;
	bool foe3Dead :  "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x28, 0xDBC, 0x10, 0x80, 0x10, 0x10, 0x27;
	bool foe4Dead :  "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x28, 0xDBC, 0x10, 0x80, 0x10, 0x14, 0x27;
	bool foe5Dead :  "EBF4.exe", 0xA19EE0, 0, 8, 0xC, 0x54, 8, 0x34, 0x9C, 0x90, 0x28, 0xDBC, 0x10, 0x80, 0x10, 0x18, 0x27;
}

startup {
	settings.Add("axe", true, "Splits when getting axe");
	settings.Add("hammer", true, "Splits when getting hammer");
	settings.Add("firstbattle", true, "Splits when entering first battle");
	settings.Add("battleend", true, "Splits every battle victory");

	vars.firstBattle = true;
	vars.playTime = 0;
	vars.newGame = false;
}

update {
	if (current.gameState == 0) return false; // not initialized

	// keeps correct playTime on returning to main menu
	if (current.playTime > vars.playTime) {
		vars.playTime = current.playTime;
	}

	// resets and starts a new run when pressing new game - can't reset when going from game to main menu
	// since quit and reload can be used to clear the battle mountain flag
	if (current.playTime == 0 && old.gameState == current.MAIN_MENU && current.gameState == current.MAP) {
		vars.newGame = true;
		vars.playTime = 0;
		vars.firstBattle = true;
	}
}

start {
	if (vars.newGame) {
		vars.newGame = false;
		return true;
	}
}

reset {
	// gets called before start
	if (vars.newGame) {
		return true;
	}
}

split {
	if (settings["battleend"] && !old.battleEnd && current.battleEnd) {
		// checks if all foes are dead, doesn't split on run / game over
		int foesLeft = current.waveSize;
		if (foesLeft > 0 && current.isFoe1Dead) foesLeft--;
		if (foesLeft > 0 && current.isFoe2Dead) foesLeft--;
		if (foesLeft > 0 && current.isFoe3Dead) foesLeft--;
		if (foesLeft > 0 && current.isFoe4Dead) foesLeft--;
		if (foesLeft > 0 && current.isFoe5Dead) foesLeft--;
		return foesLeft == 0;
	}
	if (settings["axe"] && !old.hasAxe && current.hasAxe) return true;
	if (settings["hammer"] && !old.hasHammer && current.hasHammer) return true;
	if (settings["firstbattle"] && vars.firstBattle && old.gameState == current.MAP && current.gameState == current.BATTLE) {
		vars.firstBattle = false;
		return true;
	}
}

gameTime {
	return TimeSpan.FromSeconds(vars.playTime);
}
