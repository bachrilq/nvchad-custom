local M = {}

M.treesitter = {
  ensure_installed = {
    -- defaults 
    "vim",
    "lua",
    "markdown",
    "hcl",
    "git_config",

    -- web dev 
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "yaml",
    "bash",
    "go",
    "groovy",
    "python",
    "terraform",
    "rust",

    -- "vue", "svelte",

    -- low level
    "c",
    "zig"
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
