vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<F5>", ':!script -q -c "ninja -C build" build/pipe > /dev/null<CR><CR>')
