local answer
while true do
	io.write("Do you love me (y/n)? ")
	answer=io.read()
	if answer == "y" then
		io.write("I love you too.\n")
	elseif answer == "n" then
		io.write("That is okay.\n")
		break
	else
		io.write("I don't understand.\n")
	end
	io.flush()
end