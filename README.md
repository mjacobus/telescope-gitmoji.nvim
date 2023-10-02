# telescope-gitmoji.nvim

An extension for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
that allows you to search [gitmojis](https://gitmoji.dev/)

![image](https://github.com/mjacobus/telescope-gitmoji.nvim/assets/226834/b95fc539-ba64-42c3-b15e-d6eeec7d55fd)

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
