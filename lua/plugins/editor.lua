return {
  {
    "folke/snacks.nvim",
    opts = {
      indent = {
        enabled = false,
      },
      styles = {
        float = {
          wo = { wrap = true },
        },
      },
      picker = {
        sources = {
          explorer = {
            win = {
              list = {
                wo = {
                  number = false,
                  relativenumber = false,
                  statuscolumn = "%!v:lua.ExplorerStatusCol()",
                },
              },
            },
          },
        },
        icons = {
          git = {
            commit = "󰜘 ",
            staged = "",
            added = "",
            deleted = "",
            ignored = "◌",
            modified = "",
            renamed = "",
            unmerged = "",
            untracked = "",
          },
        },
      },
    },
    config = function(_, opts)
      _G.explorer_focused = false
      vim.api.nvim_create_autocmd({ "WinEnter", "WinLeave" }, {
        callback = function(ev)
          if ev.event == "WinLeave" then
            _G.explorer_focused = false
          else
            _G.explorer_focused = vim.bo.filetype == "snacks_picker_list"
          end
        end,
      })

      local statuscol_width = 1
      _G.ExplorerStatusCol = function()
        if not _G.explorer_focused then
          return ""
        end
        local line = vim.fn.getline(vim.v.lnum)
        if line == "" then
          return ""
        end
        if vim.v.lnum == 1 then
          local last = vim.fn.line("$")
          while last > 0 and vim.fn.getline(last) == "" do
            last = last - 1
          end
          statuscol_width = #tostring(math.max(1, last))
        end
        local num = vim.v.relnum > 0 and vim.v.relnum or vim.v.lnum
        return string.format("%" .. statuscol_width .. "d", num)
      end

      require("snacks").setup(opts)

      vim.api.nvim_set_hl(0, "NormalFloat", {
        bg = "#080808",
      })

      vim.api.nvim_set_hl(0, "FloatBorder", {
        bg = "#080808",
      })
    end,
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        close_icon = "",
        show_buffer_close_icons = false,
      },
    },
  },
}
