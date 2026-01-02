return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  version = false,
  build = ":TSUpdate",
  lazy = false,
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  branch = "master",
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  opts = {
    ensure_installed = {
    'lua',
    'python',
    'javascript',
    'typescript',
    'vimdoc',
    'vim',
    'regex',
    'terraform',
    'sql',
    'dockerfile',
    'toml',
    'json',
    'java',
    'groovy',
    'go',
    'gitignore',
    'graphql',
    'yaml',
    'make',
    'cmake',
    'markdown',
    'markdown_inline',
    'bash',
    'tsx',
    'css',
    'html',
    'c',
    'cpp',
    'asm'
    },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      --  If you are experiencing weird indenting issues, add the language to
      --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      -- additional_vim_regex_highlighting = { 'ruby' },
    },
    --indent = { enable = true, disable = { 'ruby' } },
    indent = { enable = true },
  },
  -- Fallback config to handle edge cases
  config = function(_, opts)
      -- Protective call: If treesitter fails to load, don't crash neovim
      local status_ok, configs = pcall(require, "nvim-treesitter.configs")
      if not status_ok then
          return
      end
      configs.setup(opts)
  end,
}
