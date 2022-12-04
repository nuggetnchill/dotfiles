-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine nightfly theme
-- local lualine_nightfly = require("lualine.themes.nightfly")
--
-- -- new colors for theme
-- local new_colors = {
--   blue = "#65D1FF",
--   green = "#3EFFDC",
--   violet = "#FF61EF",
--   yellow = "#FFDA7B",
--   black = "#000000",
-- }
--
-- -- change nightlfy theme colors
-- lualine_nightfly.normal.a.bg = new_colors.blue
-- lualine_nightfly.insert.a.bg = new_colors.green
-- lualine_nightfly.visual.a.bg = new_colors.violet
-- lualine_nightfly.command = {
--   a = {
--     gui = "bold",
--     bg = new_colors.yellow,
--     fg = new_colors.black, -- black
--   },
-- }
--
-- -- configure lualine with modified theme
-- lualine.setup({
--   options = {
--     theme = lualine_nightfly,
--   },
-- })

-- lualine Bubble config for lualine
local colors = {
	blue = "#80a0ff",
	cyan = "#79dac8",
	black = "#1a1919",
	white = "#c6c6c6",
	red = "#ff5189",
	violet = "#7f43cc",
	grey = "#303030",
	orange = "#e89a25",
}

local bubbles_theme = {
	normal = {
		a = { fg = colors.black, bg = colors.orange },
		b = { fg = colors.cyan, bg = colors.grey },
		c = { fg = colors.grey, bg = colors.black },
	},

	insert = { a = { fg = colors.black, bg = colors.blue } },
	command = { a = { fg = colors.black, bg = colors.violet } },
	visual = { a = { fg = colors.black, bg = colors.cyan } },
	replace = { a = { fg = colors.black, bg = colors.red } },

	inactive = {
		a = { fg = colors.white, bg = colors.grey },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.white, bg = colors.grey },
	},
}

require("lualine").setup({
	options = {
		theme = bubbles_theme,
		component_separators = "|",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = {
			{ "mode", separator = { left = "" }, right_padding = 2 },
		},
		lualine_b = { "filename", "branch" },
		lualine_c = { "fileformat" },
		lualine_x = { "diff" },
		lualine_y = { "filetype", "progress" },
		lualine_z = {
			{ "location", separator = { right = "" }, left_padding = 2 },
		},
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "filetype" },
	},
	tabline = {},
	extensions = {},
})
