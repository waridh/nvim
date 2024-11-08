return {
  "echasnovski/mini.starter",
  opts = function()
    local logo = table.concat({
      "8 888888888o          .8.           ,o888888o.    8 8888        8 ",
      "8 8888    `88.       .888.         8888     `88.  8 8888        8 ",
      "8 8888     `88      :88888.     ,8 8888       `8. 8 8888        8 ",
      "8 8888     ,88     . `88888.    88 8888           8 8888        8 ",
      "8 8888.   ,88'    .8. `88888.   88 8888           8 8888        8 ",
      "8 8888888888     .8`8. `88888.  88 8888           8 8888        8 ",
      "8 8888    `88.  .8' `8. `88888. 88 8888           8 8888888888888 ",
      "8 8888      88 .8'   `8. `88888.`8 8888       .8' 8 8888        8 ",
      "8 8888    ,88'.888888888. `88888.  8888     ,88'  8 8888        8 ",
      "8 888888888P .8'       `8. `88888.  `8888888P'    8 8888        8 ",
    }, "\n")
    local pad = string.rep(" ", 22)
    local new_section = function(name, action, section)
      return { name = name, action = action, section = pad .. section }
    end

    local starter = require("mini.starter")
  --stylua: ignore
  local config = {
    evaluate_single = true,
    header = logo,
    items = {
      new_section("Find file",       LazyVim.pick(),                        "Telescope"),
      new_section("New file",        "ene | startinsert",                   "Built-in"),
      new_section("Recent files",    LazyVim.pick("oldfiles"),              "Telescope"),
      new_section("Live grep",       LazyVim.pick("live_grep"),             "Telescope"),
      new_section("Config",          LazyVim.pick.config_files(),           "Config"),
      new_section("Restore session", [[lua require("persistence").load()]], "Session"),
      new_section("Xtra Lazy",     "LazyExtras",                          "Config"),
      new_section("Lazy",            "Lazy",                                "Config"),
      new_section("Quit",            "qa",                                  "Built-in"),
    },
    content_hooks = {
      starter.gen_hook.adding_bullet(pad .. "░ ", false),
      starter.gen_hook.aligning("center", "center"),
    },
  }
    return config
  end,
}
