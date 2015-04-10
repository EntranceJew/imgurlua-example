require("keys")
local imgurlua = require("imgurlua")
local client, answer, items

while true do
	io.write("[d]ebug, [r]un, [e]xit, [m]oral support: ")
	answer=io.read()
	if answer == "d" then
		debug.debug()
	elseif answer == "r" then
		client = ImgurClient:new(CLIENT_ID, CLIENT_SECRET, ACCESS_TOKEN, REFRESH_TOKEN)
		
		items = client:gallery()
		for _,item in ipairs(items) do
			print(_, item.id, item.account_url, item.title)
		end
		print("GALLERY DELIVERED")
	elseif answer == "e" then
		io.write("Goodbye.")
		break
	elseif answer == "m" then
		io.write("You're doing a great job.\n")
	else
		io.write("PARITY ERROR")
	end
	io.flush()
end