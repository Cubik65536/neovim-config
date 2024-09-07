return { -- override nvim-cmp plugin
    "hrsh7th/nvim-cmp",
    -- override the options table that is used in the `require("cmp").setup()` call
    opts = function(_, opts)
        -- opts parameter is the default options table
        -- the function is lazy loaded so cmp is able to be required
        local cmp = require("cmp")
        -- override the default options table
        opts.window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
            winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,Search:None',
            col_offset = -3,
            side_padding = 0
        }
        opts.formatting = {
            format = require('lspkind').cmp_format()
        }
        return opts
    end
}
