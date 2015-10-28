print("HoboDoor v1 loaded.")

local oldConCommandAdd = concommand.Add

function concommand.Add(name,callback,autoComplete,helpText,flags)

	print(name.." "..callback)
	return oldConCommandAdd(name,callback,autoComplete,helpText,flags)

end

local oldConCommandRun = concommand.Run

function concommand.Run(Player,cmd,args,argumentString)

	print(Player.." "..cmd.." "..args.." "..argumentString)
	return oldConCommandRun(Player,cmd,args,argumentString)

end