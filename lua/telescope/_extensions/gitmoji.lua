local actions = require("telescope.actions")
local finders = require("telescope.finders")
local pickers = require("telescope.pickers")
local conf = require("telescope.config").values
local entry_display = require("telescope.pickers.entry_display")
local action_state = require("telescope.actions.state")

local gitmojis = require("telescope-gitmoji").gitmojis

local function action(gitmoji)
  vim.fn.setreg("*", gitmoji.value)
  vim.fn.setreg('"', gitmoji.value)
  print([[Press p or "*p to paste this gitmoji]] .. gitmoji.value)
end

local function search(opts)
  local displayer = entry_display.create({
    separator = " ",
    items = {
      { width = 4 },
      { width = 54 },
      { remaining = true },
    },
  })
  local make_display = function(entry)
    return displayer({
      entry.name,
      entry.description,
    })
  end

  pickers.new(opts, {
    prompt_title = "Gitmoji",
    sorter = conf.generic_sorter(opts),
    finder = finders.new_table({
      results = gitmojis,
      entry_maker = function(gitmoji)
        return {
          ordinal = gitmoji.name .. gitmoji.category .. gitmoji.description,
          display = make_display,

          name = gitmoji.name,
          value = gitmoji.value,
          category = gitmoji.category,
          description = gitmoji.description,
        }
      end,
    }),
    attach_mappings = function(prompt_bufnr)
      actions.select_default:replace(function()
        local gitmoji = action_state.get_selected_entry()
        actions.close(prompt_bufnr)
        action(gitmoji)
      end)
      return true
    end,
  }):find()
end

return require("telescope").register_extension({
  setup = function(config)
    action = config.action or action
  end,
  exports = { gitmoji = search },
})
