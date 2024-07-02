-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " ____________________________________                 ______________         ",
        " |------|------|     __   __   __     |     ___________     |           () | ",
        " | 64X4 | 64X4 | || |  | |  | |  |    |    |           |    |           ___| ",
        " |------|------| || |  | |  | |  |    |____|           |____|         || D | ",
        " | 64X4 | 64X4 | || |__| |__| |__|                 ________________  ||| I | ",
        " |------|------|  |  ________   ______   ______   | CUBIK65536     | ||| P | ",
        " | 64X4 | 64X4 |    |TRIDENT | |______| |______|  | 1-54BV  8940   | ||| S | ",
        " |------|------| || |TVGA    | |______| |______|  |________________| |||___| ",
        " | 64X4 | 64X4 | || |8800CS  |          ________________                ___| ",
        " |------|------| || |11380029|    LOW->|  /\\  NeoVim    | _________    |   | ",
        " | 64X4 | 64X4 |     --------    BIOS  | \\/         (1) ||_________|   | 1 | ",
        " |------|------| ||  ______  J  ______ |________________| _________    | 5 | ",
        " | 64X4 | 64X4 | || |______| 2 |______| ________________ |_________|   |___| ",
        " |------|------| ||  ________   ______ |  /\\  AstroNvim |               ___| ",
        " | 64X4 | 64X4 |    |________| |______|| \\/         (2) |   _________  |   | ",
        " |------|------| ()              HIGH->|________________|  |_________| | 9 | ",
        " | 64X4 | 64X4 |     ________   _________   _____________   _________  |   | ",
        " |______|______|__  |________| |_________| |_____________| |_________| |___| ",
        "                  |               __      0xDDB32000DDDF3D48          _ () | ",
        "                  |LLLLLLLLLLLLLL|  |LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL| |___| ",
        "                                                                           | ",
        "                                                                           | ",
      }
      return opts
    end,
  },
  
  -- Command Menu
  {
    "gelguy/wilder.nvim",
    lazy = false,
    init = function ()
      local wilder = require("wilder")

      local gradient = {
        "#4569ee", "#3987f9", "#2da3f3", "#26bce1", "#26d3c9",
        "#2ee5ae", "#3ff393", "#57fb7a", "#74fe63", "#95fb51",
        "#b5f242", "#d3e436", "#ecd12e", "#feb927" ,"#ff9f22",
        "#ff821d", "#f96519", "#e54813", "#cb2f0d"
      }

      for i, fg in ipairs(gradient) do
        gradient[i] = wilder.make_hl('WilderGradient' .. i, 'Pmenu', {{a = 1}, {a = 1}, {foreground = fg}})
      end

      wilder.setup({modes = {':', '/', '?'}})

      wilder.set_option('renderer', wilder.popupmenu_renderer(
        wilder.popupmenu_palette_theme({
          -- 'single', 'double', 'rounded' or 'solid'
          -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
          border = 'rounded',
          max_height = '75%',      -- max height of the palette
          min_height = 0,          -- set to the same as 'max_height' for a fixed height window
          prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
          reverse = 0,             -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'

          highlights = {
            gradient = gradient, -- must be set
            -- selected_gradient key can be set to apply gradient highlighting for the selected candidate.
          },
          highlighter = wilder.highlighter_with_gradient({
            wilder.basic_highlighter(), -- or wilder.lua_fzy_highlighter(),
          }),
          left = {' ', wilder.popupmenu_devicons()},
          right = {' ', wilder.popupmenu_scrollbar()},
        })
      ))
    end
  },
}
