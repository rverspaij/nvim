return {
  {
    "kndndrj/nvim-dbee",
    enabled = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    build = function()
      require("dbee").install()
    end,
    config = function()
      local source = require "dbee.sources"
      require("dbee").setup {
        sources = {
          source.MemorySource:new({
            ---@diagnostic disable-next-line: missing-fields
            {
              type = "postgres",
              name = "database",
              url = "postgresql://rverspaij:ivof1rao@localhost:5432/database",
            },
          }, "mixery"),
        },
      }
      require "custom.dbee"
    end,
  },
}
