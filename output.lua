--[[
 -65pzo and kyatwho performance tool- 
--]]



local a= Instance.new("ScreenGui")local b= Instance.new("Frame")local c= Instance.new("TextButton")local d= Instance.new("TextButton")local e= Instance.new("TextButton")local f= Instance.new("TextLabel")local g= Instance.new("TextButton")local h= Instance.new("TextLabel")local i= Instance.new("TextButton")local j= Instance.new("TextButton")local k= Instance.new("TextButton")local l= Instance.new("TextButton")a.Name="main"a.Parent= game.Players.LocalPlayer:WaitForChild("PlayerGui")a.ZIndexBehavior= Enum.ZIndexBehavior.Sibling;a.ResetOnSpawn=false;b.Parent=a;b.BackgroundColor3= Color3.fromRGB(163, 255, 137)b.BorderColor3= Color3.fromRGB(103, 221, 213)b.Position= UDim2.new(0.100320168, 0, 0.379746825, 0)b.Size= UDim2.new(0, 190, 0, 57)c.Name="up"c.Parent=b;c.BackgroundColor3= Color3.fromRGB(79, 255, 152)c.Size= UDim2.new(0, 44, 0, 28)c.Font= Enum.Font.SourceSans;c.Text="UP"c.TextColor3= Color3.fromRGB(0, 0, 0)c.TextSize=14.000;d.Name="down"d.Parent=b;d.BackgroundColor3= Color3.fromRGB(215, 255, 121)d.Position= UDim2.new(0, 0, 0.491228074, 0)d.Size= UDim2.new(0, 44, 0, 28)d.Font= Enum.Font.SourceSans;d.Text="DOWN"d.TextColor3= Color3.fromRGB(0, 0, 0)d.TextSize=14.000;e.Name="onof"e.Parent=b;e.BackgroundColor3= Color3.fromRGB(255, 249, 74)e.Position= UDim2.new(0.702823281, 0, 0.491228074, 0)e.Size= UDim2.new(0, 56, 0, 28)e.Font= Enum.Font.SourceSans;e.Text="fly"e.TextColor3= Color3.fromRGB(0, 0, 0)e.TextSize=14.000;f.Parent=b;f.BackgroundColor3= Color3.fromRGB(242, 60, 255)f.Position= UDim2.new(0.469327301, 0, 0, 0)f.Size= UDim2.new(0, 100, 0, 28)f.Font= Enum.Font.SourceSans;f.Text="Fly GUI V3"f.TextColor3= Color3.fromRGB(0, 0, 0)f.TextScaled=true;f.TextSize=14.000;f.TextWrapped=true;g.Name="plus"g.Parent=b;g.BackgroundColor3= Color3.fromRGB(133, 145, 255)g.Position= UDim2.new(0.231578946, 0, 0, 0)g.Size= UDim2.new(0, 45, 0, 28)g.Font= Enum.Font.SourceSans;g.Text="+"g.TextColor3= Color3.fromRGB(0, 0, 0)g.TextScaled=true;g.TextSize=14.000;g.TextWrapped=true;h.Name="speed"h.Parent=b;h.BackgroundColor3= Color3.fromRGB(255, 85, 0)h.Position= UDim2.new(0.468421042, 0, 0.491228074, 0)h.Size= UDim2.new(0, 44, 0, 28)h.Font= Enum.Font.SourceSans;h.Text="1"h.TextColor3= Color3.fromRGB(0, 0, 0)h.TextScaled=true;h.TextSize=14.000;h.TextWrapped=true;i.Name="mine"i.Parent=b;i.BackgroundColor3= Color3.fromRGB(123, 255, 247)i.Position= UDim2.new(0.231578946, 0, 0.491228074, 0)i.Size= UDim2.new(0, 45, 0, 29)i.Font= Enum.Font.SourceSans;i.Text="-"i.TextColor3= Color3.fromRGB(0, 0, 0)i.TextScaled=true;i.TextSize=14.000;i.TextWrapped=true;j.Name="Close"j.Parent= a.Frame;j.BackgroundColor3= Color3.fromRGB(225, 25, 0)j.Font="SourceSans"j.Size= UDim2.new(0, 45, 0, 28)j.Text="X"j.TextSize=30;j.Position=  UDim2.new(0, 0, -1, 27)k.Name="minimize"k.Parent= a.Frame;k.BackgroundColor3= Color3.fromRGB(192, 150, 230)k.Font="SourceSans"k.Size= UDim2.new(0, 45, 0, 28)k.Text="-"k.TextSize=40;k.Position= UDim2.new(0, 44, -1, 27)l.Name="minimize2"l.Parent= a.Frame;l.BackgroundColor3= Color3.fromRGB(192, 150, 230)l.Font="SourceSans"l.Size= UDim2.new(0, 45, 0, 28)l.Text="+"l.TextSize=40;l.Position= UDim2.new(0, 44, -1, 57)l.Visible=false;speeds=1;local f= game:GetService("Players").LocalPlayer;local m= game.Players.LocalPlayer.Character;local m=m and m:FindFirstChildWhichIsA("Humanoid")nowe=false;game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Fly GUI V3";
	Text = "By me_ozone and Quandale The Dinglish XII#3550";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})Duration=5;b.Active=true;b.Draggable=true;e.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		f.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for a = 1, speeds do
			spawn(function()

				local a = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local b = game.Players.LocalPlayer.Character
				local c = b and b:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and a:Wait() and b and c and c.Parent do
					if c.MoveDirection.Magnitude > 0 then
						b:TranslateBy(c.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local a = game.Players.LocalPlayer.Character
		local a = a:FindFirstChildOfClass("Humanoid") or a:FindFirstChildOfClass("AnimationController")

		for a,a in next, a:GetPlayingAnimationTracks() do
			a:AdjustSpeed(0)
		end
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		f.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		f.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local a = game.Players.LocalPlayer
		local b = a.Character.Torso
		local c = true
		local c = true
		local c = {f = 0, b = 0, l = 0, r = 0}
		local d = {f = 0, b = 0, l = 0, r = 0}
		local e = 50
		local f = 0


		local g = Instance.new("BodyGyro", b)
		g.P = 9e4
		g.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		g.cframe = b.CFrame
		local b = Instance.new("BodyVelocity", b)
		b.velocity = Vector3.new(0,0.1,0)
		b.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			a.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if c.l + c.r ~= 0 or c.f + c.b ~= 0 then
				f = f+.5+(f/e)
				if f > e then
					f = e
				end
			elseif not (c.l + c.r ~= 0 or c.f + c.b ~= 0) and f ~= 0 then
				f = f-1
				if f < 0 then
					f = 0
				end
			end
			if (c.l + c.r) ~= 0 or (c.f + c.b) ~= 0 then
				b.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (c.f+c.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(c.l+c.r,(c.f+c.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*f
				d = {f = c.f, b = c.b, l = c.l, r = c.r}
			elseif (c.l + c.r) == 0 and (c.f + c.b) == 0 and f ~= 0 then
				b.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (d.f+d.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(d.l+d.r,(d.f+d.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*f
			else
				b.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			g.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((c.f+c.b)*50*f/e),0,0)
		end
		c = {f = 0, b = 0, l = 0, r = 0}
		d = {f = 0, b = 0, l = 0, r = 0}
		f = 0
		g:Destroy()
		b:Destroy()
		a.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local a = game.Players.LocalPlayer
		local b = a.Character.UpperTorso
		local c = true
		local c = true
		local c = {f = 0, b = 0, l = 0, r = 0}
		local d = {f = 0, b = 0, l = 0, r = 0}
		local e = 50
		local f = 0


		local g = Instance.new("BodyGyro", b)
		g.P = 9e4
		g.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		g.cframe = b.CFrame
		local b = Instance.new("BodyVelocity", b)
		b.velocity = Vector3.new(0,0.1,0)
		b.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			a.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if c.l + c.r ~= 0 or c.f + c.b ~= 0 then
				f = f+.5+(f/e)
				if f > e then
					f = e
				end
			elseif not (c.l + c.r ~= 0 or c.f + c.b ~= 0) and f ~= 0 then
				f = f-1
				if f < 0 then
					f = 0
				end
			end
			if (c.l + c.r) ~= 0 or (c.f + c.b) ~= 0 then
				b.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (c.f+c.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(c.l+c.r,(c.f+c.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*f
				d = {f = c.f, b = c.b, l = c.l, r = c.r}
			elseif (c.l + c.r) == 0 and (c.f + c.b) == 0 and f ~= 0 then
				b.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (d.f+d.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(d.l+d.r,(d.f+d.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*f
			else
				b.velocity = Vector3.new(0,0,0)
			end

			g.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((c.f+c.b)*50*f/e),0,0)
		end
		c = {f = 0, b = 0, l = 0, r = 0}
		d = {f = 0, b = 0, l = 0, r = 0}
		f = 0
		g:Destroy()
		b:Destroy()
		a.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)local b;c.MouseButton1Down:connect(function()
	b = c.MouseEnter:connect(function()
		while b do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)c.MouseLeave:connect(function()
	if b then
		b:Disconnect()
		b = nil
	end
end)local b;d.MouseButton1Down:connect(function()
	b = d.MouseEnter:connect(function()
		while b do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)d.MouseLeave:connect(function()
	if b then
		b:Disconnect()
		b = nil
	end
end)game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(a)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)g.MouseButton1Down:connect(function()
	speeds = speeds + 1
	h.Text = speeds
	if nowe == true then


		tpwalking = false
		for a = 1, speeds do
			spawn(function()

				local a = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local b = game.Players.LocalPlayer.Character
				local c = b and b:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and a:Wait() and b and c and c.Parent do
					if c.MoveDirection.Magnitude > 0 then
						b:TranslateBy(c.MoveDirection)
					end
				end

			end)
		end
	end
end)i.MouseButton1Down:connect(function()
	if speeds == 1 then
		h.Text = 'cannot be less than 1'
		wait(1)
		h.Text = speeds
	else
		speeds = speeds - 1
		h.Text = speeds
		if nowe == true then
			tpwalking = false
			for a = 1, speeds do
				spawn(function()

					local a = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local b = game.Players.LocalPlayer.Character
					local c = b and b:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and a:Wait() and b and c and c.Parent do
						if c.MoveDirection.Magnitude > 0 then
							b:TranslateBy(c.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)j.MouseButton1Click:Connect(function()
	a:Destroy()
end)k.MouseButton1Click:Connect(function()
	c.Visible = false
	d.Visible = false
	e.Visible = false
	g.Visible = false
	h.Visible = false
	i.Visible = false
	k.Visible = false
	l.Visible = true
	a.Frame.BackgroundTransparency = 1
	j.Position =  UDim2.new(0, 0, -1, 57)
end)l.MouseButton1Click:Connect(function()
	c.Visible = true
	d.Visible = true
	e.Visible = true
	g.Visible = true
	h.Visible = true
	i.Visible = true
	k.Visible = true
	l.Visible = false
	a.Frame.BackgroundTransparency = 0 
	j.Position =  UDim2.new(0, 0, -1, 27)
end)