--Remplace {user} for your user name
local material_colors_file = "/home/{user}/.cache/ignis/material/neovim.lua"

local function file_exists(file)
	local f = io.open(file, "r")
	if f then
		f:close()
		return true
	else
		return false
	end
end

if file_exists(material_colors_file) then
	return dofile(material_colors_file)
else
	return {
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			transparent_background = false,
		},
	}
end
