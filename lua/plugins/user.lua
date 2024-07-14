return {
    -- customize alpha options
    -- {
    --   "goolord/alpha-nvim",
    --   opts = function(_, opts)
    --     -- customize the dashboard header
    --     opts.section.header.val = {
    --       "███╗   ███╗ █████╗ ██████╗ ██╗  ██╗██████╗ ██╗  ██╗",
    --       "████╗ ████║██╔══██╗██╔══██╗██║ ██╔╝╚════██╗██║  ██║",
    --       "██╔████╔██║███████║██████╔╝█████╔╝  █████╔╝███████║",
    --       "██║╚██╔╝██║██╔══██║██╔══██╗██╔═██╗ ██╔═══╝ ╚════██║",
    --       "██║ ╚═╝ ██║██║  ██║██║  ██║██║  ██╗███████╗     ██║",
    --       "╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝     ╚═╝",
    --       "                                                   ",
    --       " ██████╗ ██████╗ ██████╗ ███████╗                  ",
    --       "██╔════╝██╔═══██╗██╔══██╗██╔════╝                  ",
    --       "██║     ██║   ██║██║  ██║█████╗                    ",
    --       "██║     ██║   ██║██║  ██║██╔══╝                    ",
    --       "╚██████╗╚██████╔╝██████╔╝███████╗                  ",
    --       " ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝ ",
    --     }
    --     return opts
    --   end,
    -- },

    {
      "mg979/vim-visual-multi",

      init = function()
        vim.g.VM_maps = {
          ["Find Under"] = "<C-d>",
          ["Find Subword Under"] = "<C-d>",
        }
      end,
    },
    {
      "rbong/vim-flog",
      lazy = true,
      cmd = { "Flog", "Flogsplit", "Floggit" },
      dependencies = {
        "tpope/vim-fugitive",
      },
    },
}
