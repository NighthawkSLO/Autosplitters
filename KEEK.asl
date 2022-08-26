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
	current.GameFinished = false;

	vars.Unity.TryOnLoad = (Func<dynamic, bool>)(helper =>
	{
		var gd = helper.GetClass("Assembly-CSharp", "GlobalData");
		var gbfm = helper.GetClass("Assembly-CSharp", "GhostBossFightManager");

		vars.Unity.Make<float>(gd.Static, gd["CurrentGameTime"]).Name = "CurrentGameTime";

		// dark magic provided by Ero#1111
		// https://discord.com/channels/144133978759233536/144134231201808385/1012784545407434782
		vars.Unity.Make<bool>(gbfm.Address, 0xD0, 0x8, 0x60, gbfm["Instance"], gbfm["Paused"]).Name = "GameFinished";

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

	current.GameFinished = vars.Unity["GameFinished"].Current;
}

start
{
	// main menu to level 1
	return old.Scene == 1 && current.Scene == 3;
}

split
{
	if (current.Scene != old.Scene && current.Scene >= 3) return true;
	if (current.GameFinished && !old.GameFinished) return true;
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
