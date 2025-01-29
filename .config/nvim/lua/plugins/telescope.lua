return {
    {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	config = function()
	    require('telescope').setup {
		pickers = {
		    find_files = {theme = "ivy"}
		}
	    }

	    local CallTelescope = function(input)
	      local theme = require('telescope.themes').get_ivy({})
	      input(theme)
	    end

	    vim.keymap.set('n', '<leader>sf', function() CallTelescope(require('telescope.builtin').find_files)end, { desc = '[S]earch [F]iles' })
	    -- vim.keymap.set('n', '<leader>shfunction() CallTelescope(', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
	    vim.keymap.set('n', '<leader>sw', function() CallTelescope(require('telescope.builtin').grep_string)end, { desc = '[S]earch current [W]ord' })
	    vim.keymap.set('n', '<leader>sg', function() CallTelescope(require('telescope.builtin').live_grep)end, { desc = '[S]earch by [G]rep' })
	    vim.keymap.set('n', '<leader>sd', function() CallTelescope(require('telescope.builtin').diagnostics)end, { desc = '[S]earch [D]iagnostics' })
	    vim.keymap.set('n', '<leader>sb', function() CallTelescope(require('telescope.builtin').buffers)end, { desc = '[ ] Find existing buffers' })
	    vim.keymap.set('n', '<leader>sS', function() CallTelescope(require('telescope.builtin').git_status)end, { desc = '' })
	    vim.keymap.set('n', '<leader>sm', ":Telescope harpoon marks<CR>", { desc = 'Harpoon [M]arks' })
	    vim.keymap.set("n", "<Leader>sr", "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", silent)
	    vim.keymap.set("n", "<Leader>sR", "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", silent)
	    vim.keymap.set("n", "<Leader>sn", "<CMD>lua require('telescope').extensions.notify.notify()<CR>", silent)

	    vim.api.nvim_set_keymap("n", "st", ":TodoTelescope<CR>", {noremap=true})
	    vim.api.nvim_set_keymap("n", "<Leader><tab>", "<Cmd>lua require('telescope.builtin').commands()<CR>", {noremap=false})
	end
    }
}
