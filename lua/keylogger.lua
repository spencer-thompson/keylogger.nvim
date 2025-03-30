local M = {}

M.setup = function()
	local is_mouse = function(x)
		return x:match("Mouse") or x:match("Scroll") or x:match("Drag") or x:match("Release")
	end

	vim.on_key(function(key_press, typed)
		local key = vim.fn.keytrans(key_press)
		if is_mouse(key) or key_press == "" then
			return
		end

		-- if not string.match(key_press, "<(.-)>") then
		-- 	vim.print(key_press)
		-- end
		local data = { key = key, time = os.time(), ft = vim.bo.filetype }
		--
		vim.print(data)
		-- vim.bo.filetype
	end)
end

return M
