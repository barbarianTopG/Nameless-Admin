for i, v in pairs((getgc and getgc(true) or getreg and getreg() or function()
	return {}
end)) do
	pcall(function()
		if (typeof or type)(v) == "table" then
			pcall(function()
				if rawget(v, "Detected") then
					pcall(function()
						for i, v in pairs(v) do
							pcall(function()
								if (typeof or type)(v) == "function" then
									pcall(function()
										hookfunction(v, function()
											return true
										end)
									end)
								end
							end)
						end
					end)
				end
			end)
		end
	end)
end

