-- Example: Imgurlua
local imgurlua = require("imgurlua")
local client, answer, items
require("keys")
local results = ''
function xprint(...)
	local var={...}
	results = results .. "\n" .. table.concat(var, '\n')
end

function love.load(arg)
	love._openConsole()
end

function love.update(dt)
	
end

function love.draw()
	love.graphics.printf(results, 10, 10, 0, "left")
end

function love.keypressed(const, code)
	if const == 'd' then
		debug.debug()
	elseif const == 'r' then
		client = ImgurClient:new(CLIENT_ID, CLIENT_SECRET, ACCESS_TOKEN, REFRESH_TOKEN)
		
		items = client:gallery()
		for _,item in ipairs(items) do
			xprint(_, item.id, item.account_url, item.title)
		end
		xprint("GALLERY DELIVERED")
	elseif const == 'u' then
		client = ImgurClient:new(CLIENT_ID, CLIENT_SECRET, ACCESS_TOKEN, REFRESH_TOKEN)
		
		local juk = client:upload_from_path('hamster.png')
		print_r(juk)
	end
end