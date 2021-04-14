state("ThirdCrisis_x64")
{
	int loading : "UnityPlayer.dll", 0x01768560, 0x30, 0x0, 0x10, 0x28, 0x60, 0x178, 0x0;
}
startup
{
	Action<string> DebugOutput = (text) => {
		print("[ThirdCrisis Autosplitter] "+text);
	};
	vars.DebugOutput = DebugOutput;
}
init
{
	vars.DebugOutput("Initializing.");
}
isLoading
{
	return current.loading == 1;
}