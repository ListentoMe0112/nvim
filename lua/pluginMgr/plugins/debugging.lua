return {
	-- Specify the plugins to install using lazy.nvim
	-- Debugging core plugin
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
		    "mfussenegger/nvim-dap-python",
		},
		-- lazy = true, -- Lazy load the plugin
		config = function()
			-- nvim-dap configuration for Python
			require("dap-python").setup("/opt/anaconda3/bin/python3") -- Adjust path if necessary
			local dap = require("dap")
			local dapui = require("dapui")

			-- Open DAP UI automatically when debugging starts
			dapui.setup()

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

			-- Key mappings for debugging actions
			vim.keymap.set("n", "<F5>", function()
				dap.continue()
			end)
			vim.keymap.set("n", "<F10>", function()
				dap.step_over()
			end)
			vim.keymap.set("n", "<F11>", function()
				dap.step_into()
			end)
			vim.keymap.set("n", "<F12>", function()
				dap.step_out()
			end)
			vim.keymap.set("n", "<Leader>b", function()
				dap.toggle_breakpoint()
			end)
			vim.keymap.set("n", "<Leader>B", function()
				dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end)
		end,
	},

	{
		"nvim-neotest/nvim-nio",
		lazy = true, -- Lazy load nvim-nio
		config = function()
			-- You can add any additional configuration for nvim-nio here if needed
		end,
	},
}
