package = "arbiter"
version = "dev-1"
source = {
	url = "git+https://github.com/darkwiiplayer/arbiter"
}
description = {
	homepage = "https://darkwiiplayer.github.io/arbiter",
	license = "Unlicense"
}
build = {
	type = "builtin",
	modules = {
		arbiter = "src/arbiter.lua"
	}
}
