local M = {}

M.colors = {
    bg = "#151515",
    fg = "#ECEFF4",
    red = "#fc2336",
    orange = "#d08770",
    yellow = "#ffbc31",
    blue = "#2178ff",
    green = "#5afb3e",
    cyan = "#30ccf9",
    magenta = "#6f2fd8",
    purple = "#2712dc",
    pink = "#b312dc",
    grey1 = "#f8fafc",
    grey2 = "#f0f1f4",
    grey3 = "#eaecf0",
    grey4 = "#d9dce3",
    grey5 = "#c4c9d4",
    grey6 = "#b5bcc9",
    grey7 = "#929cb0",
    grey8 = "#8e99ae",
    grey9 = "#74819a",
    grey10 = "#616d85",
    grey11 = "#464f62",
    grey12 = "#3a4150",
    grey13 = "#333a47",
    grey14 = "#242932",
    grey15 = "#1e222a",
    grey16 = "#1c1f26",
    grey17 = "#0f1115",
    grey18 = "#0d0e11",
    grey19 = "#020203"
}

local themes = {

    gruvbox = {
         "ellisonleao/gruvbox.nvim", 
        priority = 1000 ,
        config = function()
        require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = false,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = false, -- invert background for search, diffs, statuslines and errors
                contrast = "hard", -- can be "hard", "soft" or empty string
                overrides = {},
                dim_inactive = false,
                transparent_mode = true,
            })
            vim.cmd("colorscheme gruvbox")
        end
    },

    muon = {
        "gregsexton/Muon",
        priority = 1000 ,
        config = function()
        require('muon').setup({})
            vim.cmd("colorscheme muon")
        end
    },

    atlanticdark = {
        "L-Colombo/atlantic-dark.nvim",
        config = function()
            require('atlantic-dark').setup{
                disable_background = true,
            }
            vim.cmd("colorscheme atlantic-dark")
        end
    },


    nightfox = {
        "EdenEast/nightfox.nvim",
        config = function()
        require('nightfox').setup({
            options = {

                fox = "carbonfox",
                -- Compiled file's destination location
                compile_path = vim.fn.stdpath("cache") .. "/nightfox",
                compile_file_suffix = "_compiled", -- Compiled file suffix
                transparent = true,     -- Disable setting background
                terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
                dim_inactive = false,    -- Non focused panes set to alternative background
                module_default = true,   -- Default enable value for modules
                colorblind = {
                enable = false,        -- Enable colorblind support
                simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
                severity = {
                    protan = 0,          -- Severity [0,1] for protan (red)
                    deutan = 0,          -- Severity [0,1] for deutan (green)
                    tritan = 0,          -- Severity [0,1] for tritan (blue)
                },
                },
                styles = {               -- Style to be applied to different syntax groups
                comments = "NONE",     -- Value is any valid attr-list value `:help attr-list`
                conditionals = "NONE",
                constants = "NONE",
                functions = "bold",
                keywords = "NONE",
                numbers = "NONE",
                operators = "NONE",
                strings = "NONE",
                types = "NONE",
                variables = "NONE",
                },
                inverse = {             -- Inverse highlight for different types
                match_paren = true,
                visual = true,
                search = true,
                },
                modules = {             -- List of various plugins and additional options
                -- ...
                },
            },
            palettes = {},
            specs = {},
            groups = {},
            })

            -- setup must be called before loading
            vim.cmd("colorscheme nightfox")
            require('lualine').setup({})
        end
    },

    monochrome = {
        'kdheepak/monochrome.nvim',
        config = function()
            require('monochrome').setup{}
            vim.cmd 'colorscheme monochrome'
        end
    },

    rasmus = {
        'kvrohit/rasmus.nvim',
        config = function()
            require('rasmus').setup{}
            vim.cmd 'colorscheme rasmus'
        end
    }, 

   githubnvimtheme = {
        'projekt0n/github-nvim-theme',
        config = function()
            require('github-theme').setup({
                theme_style = "dark", -- or "light"
            })
        end
    },
 
    onenord = {
        "rmehri01/onenord.nvim",
        config = function()
            require('onenord').setup {
                borders = true,
                fade_nc = false,
                styles = {
                    comments = "italic",
                    strings = "NONE",
                    keywords = "NONE",
                    functions = "italic",
                    variables = "bold",
                    diagnostics = "underline"
                },
                disable = {
                    background = false,
                    cursorline = false,
                    eob_lines = true
                },
                colors = {},
            }
        end
    },
    
    tokyonight = {
        "folke/tokyonight.nvim",
        config = function()
            local theme = require('tokyonight')
            theme.setup({
                style = 'night',
                on_colors = function(colors)
                    colors.bg_dark = '#000000'
                    colors.bg = '#11121D'
                    -- colors.bg_visual = M.colors.grey12
                end
            })
            theme.load()
        end
    },
    
    onedark = {
        "navarasu/onedark.nvim",
        config = function()
            local theme = require('onedark')
            theme.setup {
                style = 'darker',
                transparent = true, -- Show/hide background
                code_style = {
                    comments = 'italic',
                    keywords = 'none',
                    functions = 'none',
                    strings = 'none',
                    variables = 'none'
                },
                lualine = {
                    transparent = true, -- lualine center bar transparency
                },
            }
            theme.load()
        end
    },
    
    palenightfall = {
        "JoosepAlviste/palenightfall.nvim",
        config = function()
            require('palenightfall').setup {}
        end
    },

    abstractcs = {
        'Abstract-IDE/Abstract-cs',
        lazy = false,
        priority = 1000,
        -- config = function()
        --     require('abstractcs').setup {}
        -- end,
        
        -- init function()
        --     vim.cmd 'colorscheme absctract-cs'
        -- end
    },

    poimandres = {
        'olivercederborg/poimandres.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('poimandres').setup {
                disable_background = true,
                bold_vert_spit = true,
            }
        end,

        init = function()
            vim.cmd 'colorscheme poimandres'
        end
    },

    cyberdream = {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("cyberdream").setup({
                -- Enable transparent background
                transparent = true,

                -- Enable italics comments
                italic_comments = false,

                -- Replace all fillchars with ' ' for the ultimate clean look
                hide_fillchars = false,

                -- Modern borderless telescope theme
                borderless_telescope = true,

                -- Set terminal colors used in `:terminal`
                terminal_colors = true,

                theme = {
                    variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
                    highlights = {
                        -- Highlight groups to override, adding new groups is also possible
                        -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

                        -- Example:
                        Comment = { fg = "#b0c4d6", bg = "NONE", italic = true },

                        -- Complete list can be found in `lua/cyberdream/theme.lua`
                    },

                    -- Override a color entirely
                    colors = {
                        -- For a list of colors see `lua/cyberdream/colours.lua`
                        -- Example:
                        bg = "#000000",
                        green = "#00ff00",
                        magenta = "#ff00ff",
                    },
            },
            })
            
        end
    },   

    nordic = {
        "AlexvZyl/nordic.nvim",
        config = function()
            require('nordic').setup {}
        end
    },
    
    onedarkpro = {
        "olimorris/onedarkpro.nvim",
        config = function()
            vim.o.background = "dark"
            require('onedarkpro').load()
        end
    },
    
    tokyodark = {
        "tiagovla/tokyodark.nvim",
        config = function()
            vim.g.tokyodark_transparent_background = false
            vim.g.tokyodark_enable_italic_comment = false
            vim.g.tokyodark_enable_italic = true
            vim.g.tokyodark_color_gamma = "0.0"
            vim.cmd 'colorscheme tokyodark'
        end
    },
    
    moonfly = {
        "bluz71/vim-moonfly-colors",
        config = function()
            vim.cmd [[colorscheme moonfly]]
        end
    },
    
    dracula = {
        "Mofiqul/dracula.nvim",
        config = function()
            local theme = require('dracula')
            theme.setup {}
            theme.load()
        end
    },
    
    draculanight = {
        "magidc/draculanight",
        config = function()
            local theme = require('draculanight')
            theme.setup {}
            theme.load()
        end
    },
    
    catppuccin = {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
            vim.cmd [[colorscheme catppuccin]]
        end
    },
    
    material = {
        "marko-cerovac/material.nvim",
        config = function()
            require "plugins.configs.materialui"
        end
    },
}

M.set_active_theme = function(theme_name)
    M.theme_name = theme_name
end

M.get_active_theme =  function()
    theme = themes[M.theme_name]
    theme.lazy = false 
    theme.priority = 1000
    return theme
end

return M
