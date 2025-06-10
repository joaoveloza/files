return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui"
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    dap.listeners.before.attach.dapui_config = function()
    dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
    dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
    end

    dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
}

     vim.keymap.set('n', '<C-b>', function() require('dap').toggle_breakpoint() end)
     vim.keymap.set('n', '<C-n>dc', function() require('dap').continue() end)
  end,  
}
