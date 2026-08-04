-- Whitespace highlighting stuff
vim.cmd("highlight TrailingWhitespace ctermbg=red guibg=#e62f2f")

-- Gipperty suggested toggle of lint checks 
-- 1. Create an augroup (will own your autocmds)
local lint_grp = vim.api.nvim_create_augroup("LintToggleGroup", { clear = true })

-- 2. Define a function to add your autocmds
local function add_autocmds()
    vim.api.nvim_create_autocmd({"BufWinEnter", "InsertLeave"}, {
        pattern = "*",
        group   = lint_grp,
        callback = function()
            vim.cmd("match TrailingWhitespace /\\s\\+$/")
        end,
    })

    vim.api.nvim_create_autocmd("InsertEnter", {
        pattern = "*",
        group   = lint_grp,
        callback = function()
            vim.cmd("match TrailingWhitespace /\\s\\+\\%#\\@<!$/")
        end,
    })
end

-- 3. Track state and toggle
local enabled = false
local function toggle_my_ac()
  if enabled then
    vim.api.nvim_clear_autocmds({ group = lint_grp })
    print("→ autocmds disabled")
  else
    add_autocmds()
    print("→ autocmds enabled")
  end
  enabled = not enabled
end

-- 4. Expose a user command
vim.api.nvim_create_user_command("ToggleWhitespaceHighlight", toggle_my_ac, {})
-- Gipperty end
