spawn(function()
	local MyDF = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
	repeat wait() until _G.Target ~= nil
	local mt = getrawmetatable(game)
	local oldNamecall = mt.__namecall
	if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
	    local namecallMethod = getnamecallmethod or get_namecall_method
	    local newClose = newcclosure or function(f) return f end
	    mt.__namecall = newClose(function(...)
	        local method = namecallMethod()
	        local args = {...}
	        if tostring(method) == "FireServer" and tostring(args[1]) == "RemoteEvent" and tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" and _G.Aimbot == true and _G.Target ~= nil and _G.AimbotKeys ~= nil and _G.AimbotKeys == "nill" then
	            args[2] = _G.Target.Character.HumanoidRootPart.Position
	            return oldNamecall(unpack(args))
	        end
	        return oldNamecall(...)
	    end)
end)
