-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
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
