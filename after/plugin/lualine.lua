require('lualine').setup({
  sections = {
    lualine_c = {
      {
        'filename',
        path = 1  -- 0 = just filename, 1 = relative path, 2 = absolute path
      }
    },  -- This shows the full file path
  },
})
