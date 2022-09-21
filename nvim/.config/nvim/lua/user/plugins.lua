-- i am lazy
local fn = vim.fn

-- Automatically install packer
-- '..' is a string concatenation operator, uses therefore the data stdpath and adds the "/site/pack/packer/start/packer.nvim" string to it
-- you can get the help for the funcs below using `:help glob() ` for example
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  -- this command is not available in lua yet
  -- Adding a package to nvim
  -- basically a set of files that we can add to nvim (also called plugins)
  -- they are always under: ~/.local/share/nvim/site/pack/
  -- or also called the stdpath for "data"
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- can be written in lua, but is really verbose so we're calling vimscript here
-- we're using an autogroup here to prevent having the autocommands defined twice, after sourcing init.lua again

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end


packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  -- add your plugins here
  use { "wbthomason/packer.nvim", commit = "00ec5adef58c5ff9a07f11f45903b9dbbaa1b422" } -- Have packer manage itself
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "nvim-treesitter/nvim-treesitter", commit = "518e27589c0463af15463c9d675c65e464efc2fe" }
  use { "kyazdani42/nvim-tree.lua", commit = "09a51266bca28dd87febd63c66bdbd74f7764a63" }
  use { "akinsho/bufferline.nvim", commit = "c78b3ecf9539a719828bca82fc7ddb9b3ba0c353" }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
