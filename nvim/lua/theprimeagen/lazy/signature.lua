-- plugins.lua
return {
    {
        "ray-x/lsp_signature.nvim",
        config = function()
            require "lsp_signature".setup({
                bind = true, -- This is mandatory, otherwise border config won't get registered.
                handler_opts = {
                    border = "rounded" -- double, rounded, single, shadow, none
                },
                hint_enable = true, -- virtual hint enable
                hint_prefix = "🐼 ",  -- Panda for parameter
                hi_parameter = "Search", -- Highlight group for active parameter
                floating_window = true, -- Show function signature in floating window
                floating_window_above_cur_line = true,  -- Try to place the floating above the current line when possible
                fix_pos = false,  -- Set to true, the floating window won't auto-close until finish all parameters
                hint_scheme = "String",
                use_lspsaga = false,  -- Set to true if you want to use lspsaga
            })

        end
    }
}
