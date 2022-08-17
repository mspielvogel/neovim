local dap = require('dap')
dap.adapters.python = {
  type = 'executable';
  command = '/usr/bin/python3';
  args = { '-m', 'debugpy.adapter' };
}
require('dap')
vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
local dap = require('dap')
local function get_python()
    local python_path = '/usr/bin/python'
    local virtualenv = vim.fn.getenv('VIRTUAL_ENV')
    if virtualenv ~= vim.NIL and virtualenv ~= '' then
        python_path = virtualenv .. '/bin/python'
    end

    return python_path
end
dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
    pythonPath = function()
      return get_python()
    end;
  },
}
