if vim.g.neovide then
	vim.g.neovide_normal_opacity = 0.3

	local change_scale_factor = function(delta)
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
	end
	vim.keymap.set("n", "<C-=>", function()
		change_scale_factor(1.1)
	end)
	vim.keymap.set("n", "<C-->", function()
		change_scale_factor(1/1.1)
	end)

	vim.keymap.set("n", "<leader>9", function()
		vim.g.neovide_normal_opacity = vim.g.neovide_normal_opacity - 0.1
		print(vim.g.neovide_normal_opacity)
	end)
	vim.keymap.set("n", "<leader>0", function()
		vim.g.neovide_normal_opacity = vim.g.neovide_normal_opacity + 0.1
		print(vim.g.neovide_normal_opacity)
	end)

	--! tmux stuff
	vim.keymap.set("n", '<C-S>"', function()
		vim.cmd("botright sp");
	end)
	vim.keymap.set("n", '<C-S>%', function()
		vim.cmd("vsp");
	end)

	-- "tmuu sessions"
	vim.keymap.set("n", "<C-s><leader>C", function()
		vim.cmd("tabnew | edit /home/dave/.config/")
	end, { noremap = true, silent = true })
	vim.keymap.set("n", "<C-s><leader>P", function()
		vim.cmd("tabnew | edit /home/dave/Personals/")
	end, { noremap = true, silent = true })
	vim.keymap.set("n", "<C-s><leader>J", function()
		vim.cmd("tabnew | edit /home/dave/Documents/c++/J3C")
	end, { noremap = true, silent = true })

	-- prilly want these on normal neovim too, idk tho.
	vim.keymap.set("n", "<C-s>n", function()
		vim.cmd("tabnext")
	end, { noremap = true, silent = true })
	vim.keymap.set("n", "<C-s>p", function()
		vim.cmd("tabprev")
	end, { noremap = true, silent = true })


	--! copy n paste cuz why not lmfao lol yeah im kinda crazy idrk tbh man
	vim.keymap.set('v', '<C-S-C>', '"+y') -- Copy
	vim.keymap.set('n', '<C-S-V>', '"+P') -- Paste normal mode
end
