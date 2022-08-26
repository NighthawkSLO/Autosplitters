state("KEEK") {}

startup
{
	vars.Unity = Assembly.Load(File.ReadAllBytes(@"Components\UnityASL.bin")).CreateInstance("UnityASL.Unity");
	vars.Unity.LoadSceneManager = true;
}

init
{
	current.CGT = 0f;
	current.Scene = -1;
	current.KeyGotten = false;

	vars.Unity.TryOnLoad = (Func<dynamic, bool>)(helper =>
	{
		var gd = helper.GetClass("Assembly-CSharp", "GlobalData");
		var gbfm = helper.GetClass("Assembly-CSharp", "GhostBossFightManager");
		var bg = helper.GetClass("Assembly-CSharp", "BossGhost");

		vars.BossGhostKeyGotten = bg["KeyGotten"];

		vars.Unity.Make<float>(gd.Static, gd["CurrentGameTime"]).Name = "CurrentGameTime";
		vars.Unity.Make<int>(gbfm.Static, gbfm["Instance"], gbfm["CurrentGhostIndex"]).Name = "CurrentGhostIndex";
		vars.Unity.MakeList<IntPtr>(gbfm.Static, gbfm["Instance"], gbfm["Ghosts"]).Name = "Ghosts";

		return true;
	});

	vars.Unity.Load(game);

	if (timer.CurrentTimingMethod == TimingMethod.RealTime)
	{
		var mbox = MessageBox.Show(
			"KEEK uses in-game time.\nWould you like to switch to it?",
			"LiveSplit | KEEK",
			MessageBoxButtons.YesNo);

		if (mbox == DialogResult.Yes)
			timer.CurrentTimingMethod = TimingMethod.GameTime;
	}
}

update
{
	if (!vars.Unity.Loaded)
		return false;

	vars.Unity.Update();

	var scene = vars.Unity.Scenes.Active.Index;
	if (scene != 0) current.Scene = scene;

	// CurrentGameTime goes to 0 before scene transition if you want to reset, this way it doesn't go to 0 and keep
	// counting up for a split second, once you are properly in main menu it forces it to 0
	current.CGT = current.Scene == 1 ? 0f : Math.Max(current.CGT, vars.Unity["CurrentGameTime"].Current);

	// handle final room ghost and key
	if (current.Scene == 25) {
		var ghosts = vars.Unity["Ghosts"].Current;
		var cgi = vars.Unity["CurrentGhostIndex"].Current;

		current.KeyGotten = memory.ReadValue<bool>((IntPtr)ghosts[cgi] + (int)vars.BossGhostKeyGotten);
	}
}

start
{
	// main menu to level 1
	return old.Scene == 1 && current.Scene == 3;
}

split
{
	if (current.Scene != old.Scene && current.Scene >= 3) return true;
	if (current.Scene == 25 && current.KeyGotten && !old.KeyGotten) return true;
}

reset
{
	// back to main menu
	return old.Scene != 1 && current.Scene == 1;
}

gameTime
{
	return TimeSpan.FromSeconds(current.CGT);
}

isLoading
{
	return true;
}

exit
{
	vars.Unity.Reset();
}

shutdown
{
	vars.Unity.Reset();
}
