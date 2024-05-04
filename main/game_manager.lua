local M = {}

M.is_paused = false

function M.toggle_pause()
	M.is_paused = not M.is_paused
	-- Broadcast the new pause state to interested parties
	msg.post("game:/broadcast", "toggle_pause", { state = M.is_paused })
end

return M
