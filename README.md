# telescope-gitmoji.nvim

An extension for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
that allows you to search [gitmojis](https://gitmoji.dev/)

<!-- markdownlint-disable-next-line -->
<img width="800" alt="screenshot" src="https://user-images.githubusercontent.com/47070852/124722843-07b16f00-df3d-11eb-891c-9a316e8d577c.gif">

## Get Started

Install telescope and this plugin then

```lua
require("telescope").load_extension("gitmoji")
```

## Usage

```
:Telescope gitmoji
```

## Configuraion

**It's optional.**

by default

```lua
telescope.setup {
  extensions = {
    gitmoji = {
      action = function(gitmoji)
        -- argument gitmoji is a table.
        -- {name="", value="", cagegory="", description=""}

        vim.fn.setreg("*", gitmoji.value)
        print([[Press p or "*p to paste this gitmoji]] .. gitmoji.value)

        -- insert gitmoji when picked
        -- vim.api.nvim_put({ gitmoji.value }, 'c', false, true)
      end,
    }
  },
}
```

## Credits

This plugin is a shameless copy and paste of https://github.com/xiyaowong/telescope-emoji.nvim.
