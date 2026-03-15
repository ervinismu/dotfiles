return {
    "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*", -- or branch = "main", to use the latest commit
    config = function()
	require("screenkey").setup({
	    win_opts = {
		title = "", -- remove title bar
	        border = "rounded", -- rounded border
	    },
	    clear_after = 3, -- clear the keys after 3 seconds of inactivity
	})
    end,
}
