.PHONY : lint
lint :
	luacheck .

.PHONY : style
style :
	stylua --check .

.PHONY : version
version :
	@nvim --headless -c 'lua print("v" .. require("auto-fstring").VERSION)' -c q 2>&1
