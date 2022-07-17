--[[
 -65pzo and kyatwho performance tool- 
--]]



task.wait(2)repeat task.wait()until game:IsLoaded()if game.PlaceId==8304191830 then repeat task.wait()until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)repeat task.wait()until game.Players.LocalPlayer.PlayerGui:FindFirstChild("collection"):FindFirstChild("grid"):FindFirstChild("List"):FindFirstChild("Outer"):FindFirstChild("UnitFrames")else repeat task.wait()until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)game:GetService("ReplicatedStorage").endpoints.client_to_server.vote_start:InvokeServer()repeat task.wait()until game:GetService("Workspace")["_waves_started"].Value==true end;local a= game:GetService("HttpService")local b= game:GetService("RunService")local b= game.Players.LocalPlayer:GetMouse()local c= game:GetService("UserInputService")getgenv().savefilename="Anime-Adventures_"..game.Players.LocalPlayer.Name..".json"local function d()pcall(function()
		local a = tostring(getgenv().weburl) --webhook
		print("webhook?")
		if a == "" then
			return
		end

		gems = tostring(game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.GoldGemXP.GemReward.Main.Amount.Text)
		cwaves = game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.Middle.WavesCompleted.Text
		ctime = game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.Middle.Timer.Text
		waves = cwaves:split(": ")
		ttime = ctime:split(": ")

		local b = {
			["content"] = "",
			["username"] = "Anime Adventures",
			["avatar_url"] = "https://tr.rbxcdn.com/e5b5844fb26df605986b94d87384f5fb/150/150/Image/Jpeg",
			["embeds"] = {
				{
					["author"] = {
						["name"] = "Anime Adventures | Result ✔",
						["icon_url"] = "https://cdn.discordapp.com/emojis/997123585476927558.webp?size=96&quality=lossless"
					},
					["description"] = "🎮 **"..game:GetService("Players").LocalPlayer.Name.."** 🎮",
					["color"] = 110335,

					["thumbnail"] = {
						['url'] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.userId .. "&width=420&height=420&format=png"
					},

					["fields"] = {
						{
							["name"] = "Total Waves:",
							["value"] = tostring(waves[2]) ..
								" <:wave:997136622363627530>",
							["inline"] = true
						}, {
							["name"] = "Recieved Gems:",
							["value"] = gems .. " <:gem:997123585476927558>",
							["inline"] = true
						}, {
							["name"] = "Total Time:",
							["value"] = tostring(ttime[2]) .. " ⏳",
							["inline"] = true
						}
					}
				}
			}
		}

		local b = game:GetService("HttpService"):JSONEncode(b)

		local c = {["content-type"] = "application/json"}
		request = http_request or request or HttpPost or syn.request or http.request
		local a = {Url = a, Body = b, Method = "POST", Headers = c}
		warn("Sending webhook notification...")
		request(a)
	end)end;function sex()local e= readfile(savefilename)local e= a:JSONDecode(e)getgenv().disableatuofarm=false;getgenv().sellatwave= e.sellatwave;getgenv().autosell= e.autosell;getgenv().AutoFarm= e.autofarm;getgenv().weburl= e.webhook;getgenv().autostart= e.autostart;getgenv().autoupgrade= e.autoupgrade;getgenv().difficulty= e.difficulty;getgenv().world= e.world;getgenv().level= e.level;getgenv().door= e.door;getgenv().SpawnUnitPos= e.xspawnUnitPos;getgenv().SelectedUnits= e.xselectedUnits;getgenv().autoabilities= e.autoabilities;function updatejson()local b= {
            -- unitname = getgenv().unitname,
            -- unitid = getgenv().unitid,
            sellatwave = getgenv().sellatwave,
            autosell = getgenv().autosell,
            webhook = getgenv().weburl,
            autofarm = getgenv().AutoFarm,
            autostart = getgenv().autostart,
            autoupgrade = getgenv().autoupgrade,
            difficulty = getgenv().difficulty,
            world = getgenv().world,
            level = getgenv().level,
            door = getgenv().door,
            xspawnUnitPos = getgenv().SpawnUnitPos,
            xselectedUnits = getgenv().SelectedUnits,
            autoabilities = getgenv().autoabilities
        }local a= a:JSONEncode(b)writefile(savefilename, a)end;local a= loadstring(game:HttpGet "https://raw.githubusercontent.com/Forever4D/Lib/main/DiscordLib2.lua")()local e= a:Window("[🌊UPD 1] Anime Adventures v1.2".." - "..tostring(identifyexecutor()))local e= e:Server("Anime Adventures", "http://www.roblox.com/asset/?id=6031075938")if game.PlaceId==8304191830 then local a= e:Channel("Select Units")local b= e:Channel("Auto Farm")local c= {}local function d()repeat task.wait()until game.Players.LocalPlayer.PlayerGui:FindFirstChild("collection"):FindFirstChild("grid"):FindFirstChild("List"):FindFirstChild("Outer"):FindFirstChild("UnitFrames")task.wait(2)table.clear(c)for a,a in pairs(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.collection.grid.List.Outer.UnitFrames:GetChildren())do if a.Name=="CollectionUnitFrame"then repeat task.wait()until a:FindFirstChild("_uuid")table.insert(c, a.name.Text .. " #" .. a._uuid.Value)end end end;d()local function f()game:GetService("ReplicatedStorage").endpoints.client_to_server.unequip_all:InvokeServer()for a=1,6 do local a= getgenv().SelectedUnits["U" .. a]warn(a)if a~=nil then local a= a:split(" #")task.wait(0.3)game:GetService("ReplicatedStorage").endpoints.client_to_server.equip_unit:InvokeServer(a[2])end end;updatejson()end;local g= a:Dropdown("Unit 1", c, getgenv().SelectedUnits["U1"], function(a)
            getgenv().SelectedUnits["U1"] = a
            f()
        end)local h= a:Dropdown("Unit 2", c, getgenv().SelectedUnits["U2"], function(a)
            getgenv().SelectedUnits["U2"] = a
            f()
        end)local i= a:Dropdown("Unit 3", c, getgenv().SelectedUnits["U3"], function(a)
            getgenv().SelectedUnits["U3"] = a
            f()
        end)local j= a:Dropdown("Unit 4", c, getgenv().SelectedUnits["U4"], function(a)
            getgenv().SelectedUnits["U4"] = a
            f()
        end)local k=  game.Players.LocalPlayer.PlayerGui["spawn_units"].Lives.Main.Desc.Level.Text:split(" ")_G.drop5=nil;_G.drop6=nil;if tonumber(k[2])>=20 then _G.drop5= a:Dropdown("Unit 5", c, getgenv().SelectedUnits["U5"], function(a)
                getgenv().SelectedUnits["U5"] = a
                f()
            end)end;if tonumber(k[2])>=50 then _G.drop6= a:Dropdown("Unit 6", c, getgenv().SelectedUnits["U6"], function(a)
                getgenv().SelectedUnits["U6"] = a
                f()
            end)end;a:Button("Refresh Unit List", function()
            g:Clear()
            h:Clear()
            i:Clear()
            j:Clear()
            if _G.drop5 ~= nil then
                _G.drop5:Clear()
            end
            if _G.drop6 ~= nil then
                _G.drop6:Clear()
            end 

            d()
            game:GetService("ReplicatedStorage").endpoints.client_to_server.unequip_all:InvokeServer()
            for a, a in ipairs(c) do
                g:Add(a)
                h:Add(a)
                i:Add(a)
                j:Add(a)
                if _G.drop5 ~= nil then
                    _G.drop5:Add(a)
                end
                if _G.drop6 ~= nil then
                    _G.drop6:Add(a)
                end 
            end
            getgenv().SelectedUnits = {
                U1 = nil,
                U2 = nil,
                U3 = nil,
                U4 = nil,
                U5 = nil,
                U6 = nil
            }
        end)a:Label(" ")a:Label(" ")b:Toggle("Auto Farm", getgenv().AutoFarm, function(a)
            getgenv().AutoFarm = a
            updatejson()
        end)getgenv().levels= {"nill"}b:Toggle("Auto Start", getgenv().autostart, function(a)
            getgenv().autostart = a
            updatejson()

            if getgenv().autostart and getgenv().AutoFarm then

                for a, a in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetDescendants()) do
                    if a.Name == "Owner" and a.Value == nil then
                        getgenv().door = a.Parent.Name
                        break
                    end
                end

                task.wait(0.1)

                local a = {
                    [1] = getgenv().door
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(
                    a))

                    task.wait(0.1)

                local a = {
                    [1] = getgenv().door, -- Lobby 
                    [2] = getgenv().level, -- World
                    [3] = true, -- Friends Only or not
                    [4] = getgenv().difficulty
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(
                    a))

                    task.wait(0.1)

                local a = {
                    [1] = getgenv().door
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(
                    a))
            end

        end)b:Toggle("Auto Abilities", getgenv().AutoFarm, function(a)
            getgenv().autoabilities = a
            updatejson()
        end)b:Toggle("Auto Upgrade Units", getgenv().autoupgrade, function(a)
            getgenv().autoupgrade = a
            updatejson()
        end)b:Toggle("Auto Sell at spectic Wave", getgenv().autosell, function(a)
            getgenv().autosell = a
            updatejson()
            if getgenv().autosell == false then
                getgenv().disableatuofarm = false
            end
        end)b:Textbox("Select Wave Number for Auto Sell {Press Enter}", getgenv().sellatwave, false, function(a)
            getgenv().sellatwave = tonumber(a)
            updatejson()
        end)local a= b:Dropdown("Select World", {"Plannet Namak", "Shiganshinu District", "Snowy Town","Hidden Sand Village", "Marine's Ford"}, getgenv().world, function(a)
            getgenv().world = a
            updatejson()
            if a == "Plannet Namak" then
                getgenv().leveldrop:Clear()
                table.clear(levels)
                getgenv().levels = {"namek_infinite", "namek_level_1", "namek_level_2", "namek_level_3",
                                    "namek_level_4", "namek_level_5", "namek_level_6"}
                for a, a in ipairs(levels) do
                    getgenv().leveldrop:Add(a)
                end
            elseif a == "Shiganshinu District" then
                getgenv().leveldrop:Clear()
                table.clear(levels)
                getgenv().levels = {"aot_infinite", "aot_level_1", "aot_level_2", "aot_level_3", "aot_level_4",
                                    "aot_level_5", "aot_level_6"}
                for a, a in ipairs(levels) do
                    getgenv().leveldrop:Add(a)
                end
            elseif a == "Snowy Town" then
                getgenv().leveldrop:Clear()
                table.clear(levels)
                getgenv().levels = {"demonslayer_infinite", "demonslayer_level_1", "demonslayer_level_2",
                                    "demonslayer_level_3", "demonslayer_level_4", "demonslayer_level_5",
                                    "demonslayer_level_6"}
                for a, a in ipairs(levels) do
                    getgenv().leveldrop:Add(a)
                end
            elseif a == "Hidden Sand Village" then
                getgenv().leveldrop:Clear()
                table.clear(levels)
                getgenv().levels = {"naruto_infinite", "naruto_level_1", "naruto_level_2", "naruto_level_3",
                                    "naruto_level_4", "naruto_level_5", "naruto_level_6"}
                for a, a in ipairs(levels) do
                    getgenv().leveldrop:Add(a)
                end
            elseif a == "Marine's Ford" then
                getgenv().leveldrop:Clear()
                table.clear(levels)
                getgenv().levels = {"marineford_infinite","marineford_level_1","marineford_level_2","marineford_level_3",
                "marineford_level_4","marineford_level_5","marineford_level_6",}
                for a, a in ipairs(levels) do
                    getgenv().leveldrop:Add(a)
                end
            end
        end)getgenv().leveldrop= b:Dropdown("Select Level", getgenv().levels, getgenv().level, function(a)
            getgenv().level = a
            updatejson()
        end)getgenv().diff= b:Dropdown("Select Difficulty", {"Normal", "Hard"}, getgenv().difficulty, function(a)
            getgenv().difficulty = a
            updatejson()
        end)local a= e:Channel("Webhook")a:Label("Webhook sends notification in discord everytime\nGame is Finished!")local c;if getgenv().weburl==""then c="Insert url here!"else c= getgenv().weburl end;a:Textbox("Webhook URL {Press Enter}" , c, false, function(a)
            getgenv().weburl = a
            updatejson()
        end)b:Label(" ")b:Label(" ")else local f= e:Channel("Auto Farm")local g= e:Channel("Auto Sell")local e= e:Channel("Webhook")game.Players.LocalPlayer.PlayerGui.MessageGui.Enabled=false;game:GetService("ReplicatedStorage").packages.assets["ui_sfx"].error.Volume=0;game:GetService("ReplicatedStorage").packages.assets["ui_sfx"].error_old.Volume=0;f:Toggle("Auto Farm", getgenv().AutoFarm, function(a)
            getgenv().AutoFarm = a
            updatejson()
        end)f:Toggle("Auto Abilities", getgenv().AutoFarm, function(a)
            getgenv().autoabilities = a
            updatejson()
        end)f:Toggle("Auto Start", getgenv().autostart, function(a)
            getgenv().autostart = a
            updatejson()
        end)g:Toggle("Auto Sell at Specfic Wave", getgenv().autosell, function(a)
            getgenv().autosell = a
            updatejson()
            if getgenv().autosell == false then
                getgenv().disableatuofarm = false
            end

        end)g:Textbox("Select Wave Number for Auto Sell {Press Enter}", getgenv().sellatwave, false, function(a)
            getgenv().sellatwave = tonumber(a)
            updatejson()
        end)f:Toggle("Auto Upgrade Units", getgenv().autoupgrade, function(a)
            getgenv().autoupgrade = a
            updatejson()
        end)function MouseClick(d)local e;e= c.InputBegan:Connect(
                function(c, f)
                    if c.UserInputType == Enum.UserInputType.MouseButton1 then
                        e:Disconnect()
                        local c = Instance.new("Part", game.Workspace)
                        c.Size = Vector3.new(1, 1, 1)
                        c.Material = Enum.Material.Neon
                        c.Position = b.hit.p
                        task.wait()
                        c.Anchored = true
                        a:Notification("Spawn Unit Posotion:", tostring(c.Position), "Okay!")
                        c.CanCollide = false
                        for a = 0, 1, 0.1 do
                            c.Transparency = a
                            task.wait()
                        end
                        c:Destroy()
                        SpawnUnitPos[d]["x"] = c.Position.X
                        SpawnUnitPos[d]["y"] = c.Position.Y
                        SpawnUnitPos[d]["z"] = c.Position.Z
                        updatejson()
                    end
                end)end;f:Button("Set Unit 1 Postion", function()
            a:Notification("Set Unit 1 Spawn Position",
                "Click on the floor to set the spawn unit position!\n (don't press \"Done\" until you set position)",
                "Done")
            MouseClick("UP1")
        end)f:Button("Set Unit 2 Postion", function()
            a:Notification("Set Unit 2 Spawn Position",
                "Click on the floor to set the spawn unit position!\n (don't press \"Done\" until you set position)",
                "Done")
            MouseClick("UP2")
        end)f:Button("Set Unit 3 Postion", function()
            a:Notification("Set Unit 3 Spawn Position",
                "Click on the floor to set the spawn unit position!\n (don't press \"Done\" until you set position)",
                "Done")
            MouseClick("UP3")
        end)f:Button("Set Unit 4 Postion", function()
            a:Notification("Set Unit 4 Spawn Position",
                "Click on the floor to set the spawn unit position!\n (don't press \"Done\" until you set position)",
                "Done")
            MouseClick("UP4")
        end)local b= game.Players.LocalPlayer.PlayerGui["spawn_units"].Lives.Main.Desc.Level.Text:split(" ")if tonumber(b[2])>=20 then f:Button("Set Unit 5 Postion", function()
                a:Notification("Set Unit 5 Spawn Position",
                    "Click on the floor to set the spawn unit position!\n (don't press \"Done\" until you set position)",
                    "Done")
                MouseClick("UP5")
            end)end;if tonumber(b[2])>=50 then f:Button("Set Unit 6 Postion", function()
                a:Notification("Set Unit 6 Spawn Position",
                    "Click on the floor to set the spawn unit position!\n (don't press \"Done\" until you set position)",
                    "Done")
                MouseClick("UP6")
            end)end;e:Label("Webhook sends notification in discord everytime game Finishes.")local a;if getgenv().weburl==""then a="Insert url here!"else a= getgenv().weburl end;e:Textbox("Webhook URL {Press Enter}" , a, false, function(a)
            getgenv().weburl = a
            updatejson()
        end)e:Button("Test Webhook", function()
            d()
        end)f:Label("--- Saved Config (Doesn't Refresh) ---")f:Label("Auto Sell at Wave: " .. tostring(getgenv().sellatwave))f:Label("Webhook: " .. tostring(getgenv().weburl))f:Label("Auto Farm: " .. tostring(getgenv().AutoFarm))f:Label("Auto Start: " .. tostring(getgenv().autostart))f:Label("Auto Sell: " .. tostring(getgenv().autosell))f:Label("Auto Upgrade: " .. tostring(getgenv().autoupgrade))f:Label("Difficulty: " .. tostring(getgenv().difficulty))f:Label("Selected World: " .. tostring(getgenv().world))f:Label("Selected Level: " .. tostring(getgenv().level))f:Label(" ")f:Label(" ")end;if game.PlaceId==8304191830 then local a= e:Channel("Misc")a:Toggle("Auto Summon {Use Ticket 1}", getgenv().autosummontickets, function(a)
            getgenv().autosummontickets = a
            while getgenv().autosummontickets do
                task.wait()
                local a = {
                    [1] = "dbz_fighter",
                    [2] = "ticket"
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_random_fighter:InvokeServer(unpack(
                    a))
            end
            updatejson()
        end)a:Toggle("Auto Summon {Buy 1}", getgenv().autosummongem, function(a)
            getgenv().autosummongem = a
            while getgenv().autosummongem do
                task.wait()
                local a = {
                    [1] = "dbz_fighter",
                    [2] = "gems"
                }

                game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_random_fighter:InvokeServer(unpack(
                    a))
            end
            updatejson()
        end)a:Toggle("Auto Summon {Buy 10}", getgenv().autosummongem10, function(a)
            getgenv().autosummongem10 = a
            while getgenv().autosummongem10 do
                task.wait()
                local a = {
                    [1] = "dbz_fighter",
                    [2] = "gems10"
                }

                game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_random_fighter:InvokeServer(unpack(
                    a))

            end
            updatejson()
        end)end;local b= e:Channel("Credits")b:Label("Forever4D#0001")b:Label("Arpon AG#6612")b:Button("Copy Discord Invite", function()
        setclipboard("https://arponag.xyz/Discord")
        a:Notification("Notification", "Discord link copied to your clipboard", "Okay!")
    end)b:Label(" ")end;if isfile(savefilename)then sex()else local b= {
        -- unitname = "name",
        -- unitid = "id",
        autoabilities = false,
        webhook = "",
        sellatwave = 0,
        autosell = false,
        autofarm = false,
        autostart = false,
        autoupgrade = false,
        difficulty = "Normal",
        world = "nil",
        level = "nil",
        door = "nil",
        xspawnUnitPos = {
            UP1 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            },

            UP2 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            },

            UP3 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            },

            UP4 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            },
            
            UP5 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            },

            UP6 = {
                x = -2952.81689453125,
                y = 91.80620574951172,
                z = -707.9673461914062
            }
        },
        xselectedUnits = {
            U1 = nil,
            U2 = nil,
            U3 = nil,
            U4 = nil,
            U5 = nil,
            U6 = nil
        }

    }local a= a:JSONEncode(b)writefile(savefilename, a)sex()end;coroutine.resume(coroutine.create(function()
    while task.wait() do
        local a = game:GetService("Workspace"):WaitForChild("_wave_num")
        
        if getgenv().AutoFarm and not getgenv().disableatuofarm then
            if game.PlaceId ~= 8304191830 then
                x = 4
                y = 3
                z = 4

                for a = 1, 6 do
                    local b = getgenv().SelectedUnits["U" .. a]
                    if b ~= nil then
                        local b = b:split(" #")
                        local a = getgenv().SpawnUnitPos["UP" .. a]

                        --place units 0
                        local c = {
                            [1] = b[2],
                            [2] = CFrame.new(Vector3.new(a["x"], a["y"], a["z"]), Vector3.new(0, 0, -1))
                        }
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(c))

                        --place units 1
                        local c = {
                            [1] = b[2],
                            [2] = CFrame.new(Vector3.new(a["x"] - x, a["y"], a["z"]), Vector3.new(0, 0, -1))
                        }
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(c))

                        --place units 2 
                        local c = {
                            [1] = b[2],
                            [2] = CFrame.new(Vector3.new(a["x"], a["y"], a["z"] + z), Vector3.new(0, 0, -1))
                        }
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(c))

                        --place units 3 
                        local c = {
                            [1] = b[2],
                            [2] = CFrame.new(Vector3.new(a["x"] - x, a["y"], a["z"] + z), Vector3.new(0, 0, -1))
                        }
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(c))

                        --place units 4
                        local c = {
                            [1] = b[2],
                            [2] = CFrame.new(Vector3.new(a["x"]+ x, a["y"], a["z"] + z), Vector3.new(0, 0, -1))
                        }
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(c))

                        --place units 5
                        local a = {
                            [1] = b[2],
                            [2] = CFrame.new(Vector3.new(a["x"] + x, a["y"] , a["z"]), Vector3.new(0, 0, -1))
                        }
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(a))
                    end
                end
            end
        end
    end
end))coroutine.resume(coroutine.create(function()
	local a = game:GetService("Workspace"):WaitForChild("_DATA"):WaitForChild("GameFinished")
	a:GetPropertyChangedSignal("Value"):Connect(function()
	print("Changed", a.Value == true)
	if a.Value == true then
        repeat task.wait() until  game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Enabled == true
        task.wait()
		pcall(function() d() end)
		print("next")
		task.wait(2)
		game:GetService("TeleportService"):Teleport(8304191830, game.Players.LocalPlayer)
	end
	end)
end))coroutine.resume(coroutine.create(function()
    while task.wait() do
        if getgenv().autoupgrade then
            if game.PlaceId ~= 8304191830 then
                local a = 8
                repeat task.wait() until game:GetService("Workspace"):FindFirstChild("_UNITS")
                for b, b in ipairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                    repeat task.wait() until b:FindFirstChild("_stats")
                    if tostring(b["_stats"].player.Value) == game.Players.LocalPlayer.Name then
                        repeat task.wait() until b:FindFirstChild("_stats"):FindFirstChild("upgrade")

                        if b["_stats"].upgrade.Value == 0 or b["_stats"].upgrade.Value <= a then
                            game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(b)
                        end
                    end
                end
            end
        end
    end
end))coroutine.resume(coroutine.create(function()
    while task.wait() do
        local a = game:GetService("Workspace"):WaitForChild("_wave_num")
        if getgenv().autosell and tonumber(getgenv().sellatwave) <= a.Value then
            getgenv().disableatuofarm = true
            if game.PlaceId ~= 8304191830 then
                repeat task.wait() until game:GetService("Workspace"):FindFirstChild("_UNITS")
                for a, a in ipairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                    repeat
                        task.wait()
                    until a:FindFirstChild("_stats")
                    if tostring(a["_stats"].player.Value) == game.Players.LocalPlayer.Name then
                        repeat
                            task.wait()
                        until a:FindFirstChild("_stats"):FindFirstChild("upgrade")
            
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.sell_unit_ingame:InvokeServer(a)
                    end
                end
            end
        end
    end
end))coroutine.resume(coroutine.create(function()
    while task.wait() do
        if getgenv().autoabilities then
            if game.PlaceId ~= 8304191830 then
                repeat task.wait() until game:GetService("Workspace"):FindFirstChild("_UNITS")
                for a, a in ipairs(game:GetService("Workspace")["_UNITS"]:GetChildren()) do
                    repeat task.wait() until a:FindFirstChild("_stats")
                    if tostring(a["_stats"].player.Value) == game.Players.LocalPlayer.Name then
                        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(a)
                    end
                end
            end
        end
    end
end))coroutine.resume(coroutine.create(function()
    while task.wait() do
        if getgenv().autostart and getgenv().AutoFarm then
            if game.PlaceId == 8304191830 then
                for a, a in pairs(game:GetService("Workspace")["_LOBBIES"].Story:GetDescendants()) do
                    if a.Name == "Owner" and a.Value == nil then
                        getgenv().door = a.Parent.Name
                        break
                    end
                end

                task.wait(0.1)

                local a = {
                    [1] = getgenv().door
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(
                    a))

                    task.wait(0.1)

                local a = {
                    [1] = getgenv().door, -- Lobby 
                    [2] = getgenv().level, -- World
                    [3] = true, -- Friends Only or not
                    [4] = getgenv().difficulty
                }
                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(
                    a))

                    task.wait(0.1)

                local a = {
                    [1] = getgenv().door
                }

                game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(
                    a))

            end
        end
    end
end))pcall(function()
	repeat wait() until game:IsLoaded()
	for a,a in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
		a:Disable()
	end
end)