--kyatwho and 65pzo tools.js™


local a= {}local b= game:GetService("TweenService")local c= TweenInfo.new;local d= game:GetService("UserInputService")local e= game:GetService("RunService")local e= {}local f= {}function a:DraggingEnabled(a,b)b=b or a;local c=false;local e,f,g;a.InputBegan:Connect(function(a)
        if a.UserInputType == Enum.UserInputType.MouseButton1 then
            c = true
            f = a.Position
            g = b.Position
            
            a.Changed:Connect(function()
                if a.UserInputState == Enum.UserInputState.End then
                    c = false
                end
            end)
        end
    end)a.InputChanged:Connect(function(a)
        if a.UserInputType == Enum.UserInputType.MouseMovement then
            e = a
        end
    end)d.InputChanged:Connect(function(a)
        if a == e and c then
            local a = a.Position - f
            b.Position  = UDim2.new(g.X.Scale, g.X.Offset + a.X, g.Y.Scale, g.Y.Offset + a.Y)
        end
    end)end;function e:TweenObject(a,d,e,...)b:Create(a, c(e, ...), d):Play()end;local b= {
    SchemeColor = Color3.fromRGB(74, 99, 135),
    Background = Color3.fromRGB(36, 37, 43),
    Header = Color3.fromRGB(28, 29, 34),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(32, 32, 38)
}local c= {
    DarkTheme = {
        SchemeColor = Color3.fromRGB(64, 64, 64),
        Background = Color3.fromRGB(0, 0, 0),
        Header = Color3.fromRGB(0, 0, 0),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    },
    LightTheme = {
        SchemeColor = Color3.fromRGB(150, 150, 150),
        Background = Color3.fromRGB(255,255,255),
        Header = Color3.fromRGB(200, 200, 200),
        TextColor = Color3.fromRGB(0,0,0),
        ElementColor = Color3.fromRGB(224, 224, 224)
    },
    BloodTheme = {
        SchemeColor = Color3.fromRGB(227, 27, 27),
        Background = Color3.fromRGB(10, 10, 10),
        Header = Color3.fromRGB(5, 5, 5),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    },
    GrapeTheme = {
        SchemeColor = Color3.fromRGB(166, 71, 214),
        Background = Color3.fromRGB(64, 50, 71),
        Header = Color3.fromRGB(36, 28, 41),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(74, 58, 84)
    },
    Ocean = {
        SchemeColor = Color3.fromRGB(86, 76, 251),
        Background = Color3.fromRGB(26, 32, 58),
        Header = Color3.fromRGB(38, 45, 71),
        TextColor = Color3.fromRGB(200, 200, 200),
        ElementColor = Color3.fromRGB(38, 45, 71)
    },
    Midnight = {
        SchemeColor = Color3.fromRGB(26, 189, 158),
        Background = Color3.fromRGB(44, 62, 82),
        Header = Color3.fromRGB(57, 81, 105),
        TextColor = Color3.fromRGB(255, 255, 255),
        ElementColor = Color3.fromRGB(52, 74, 95)
    },
    Sentinel = {
        SchemeColor = Color3.fromRGB(230, 35, 69),
        Background = Color3.fromRGB(32, 32, 32),
        Header = Color3.fromRGB(24, 24, 24),
        TextColor = Color3.fromRGB(119, 209, 138),
        ElementColor = Color3.fromRGB(24, 24, 24)
    },
    Synapse = {
        SchemeColor = Color3.fromRGB(46, 48, 43),
        Background = Color3.fromRGB(13, 15, 12),
        Header = Color3.fromRGB(36, 38, 35),
        TextColor = Color3.fromRGB(152, 99, 53),
        ElementColor = Color3.fromRGB(24, 24, 24)
    },
    Serpent = {
        SchemeColor = Color3.fromRGB(0, 166, 58),
        Background = Color3.fromRGB(31, 41, 43),
        Header = Color3.fromRGB(22, 29, 31),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(22, 29, 31)
    }
}local d=""local d= {

}local g="KavoConfig.JSON"pcall(function()

if not pcall(function() readfile(g) end) then
writefile(g, game:service'HttpService':JSONEncode(d))
end

Settings = game:service'HttpService':JSONEncode(readfile(g))
end)local g= tostring(math.random(1, 100))..tostring(math.random(1,50))..tostring(math.random(1, 100))function a:ToggleUI()if game.CoreGui[g].Enabled then game.CoreGui[g].Enabled=false else game.CoreGui[g].Enabled=true end end;function a.CreateLib(h,i)if not i then i=b end;if i=="DarkTheme"then i= c.DarkTheme elseif i=="LightTheme"then i= c.LightTheme elseif i=="BloodTheme"then i= c.BloodTheme elseif i=="GrapeTheme"then i= c.GrapeTheme elseif i=="Ocean"then i= c.Ocean elseif i=="Midnight"then i= c.Midnight elseif i=="Sentinel"then i= c.Sentinel elseif i=="Synapse"then i= c.Synapse elseif i=="Serpent"then i= c.Serpent else if i.SchemeColor==nil then i.SchemeColor= Color3.fromRGB(74, 99, 135)elseif i.Background==nil then i.Background= Color3.fromRGB(36, 37, 43)elseif i.Header==nil then i.Header= Color3.fromRGB(28, 29, 34)elseif i.TextColor==nil then i.TextColor= Color3.fromRGB(255,255,255)elseif i.ElementColor==nil then i.ElementColor= Color3.fromRGB(32, 32, 38)end end;i=i or{}local b;h=h or"Library"table.insert(a, h)for a,a in pairs(game.CoreGui:GetChildren())do if a:IsA("ScreenGui")and a.Name==h then a:Destroy()end end;local b= Instance.new("ScreenGui")local c= Instance.new("Frame")local j= Instance.new("UICorner")local k= Instance.new("Frame")local l= Instance.new("UICorner")local m= Instance.new("Frame")local n= Instance.new("TextLabel")local o= Instance.new("ImageButton")local p= Instance.new("Frame")local q= Instance.new("UICorner")local r= Instance.new("Frame")local s= Instance.new("Frame")local t= Instance.new("UIListLayout")local u= Instance.new("Frame")local v= Instance.new("Folder")local w= Instance.new("Frame")local x= Instance.new("Frame")a:DraggingEnabled(k, c)x.Name="blurFrame"x.Parent=u;x.BackgroundColor3= Color3.fromRGB(0, 0, 0)x.BackgroundTransparency=1;x.BorderSizePixel=0;x.Position= UDim2.new(-0.0222222228, 0, -0.0371747203, 0)x.Size= UDim2.new(0, 376, 0, 289)x.ZIndex=999;b.Parent= game.CoreGui;b.Name=g;b.ZIndexBehavior= Enum.ZIndexBehavior.Sibling;b.ResetOnSpawn=false;c.Name="Main"c.Parent=b;c.BackgroundColor3= i.Background;c.ClipsDescendants=true;c.Position= UDim2.new(0.336503863, 0, 0.275485456, 0)c.Size= UDim2.new(0, 525, 0, 318)j.CornerRadius= UDim.new(0, 4)j.Name="MainCorner"j.Parent=c;k.Name="MainHeader"k.Parent=c;k.BackgroundColor3= i.Header;f[k]="BackgroundColor3"k.Size= UDim2.new(0, 525, 0, 29)l.CornerRadius= UDim.new(0, 4)l.Name="headerCover"l.Parent=k;m.Name="coverup"m.Parent=k;m.BackgroundColor3= i.Header;f[m]="BackgroundColor3"m.BorderSizePixel=0;m.Position= UDim2.new(0, 0, 0.758620679, 0)m.Size= UDim2.new(0, 525, 0, 7)n.Name="title"n.Parent=k;n.BackgroundColor3= Color3.fromRGB(255, 255, 255)n.BackgroundTransparency=1.000;n.BorderSizePixel=0;n.Position= UDim2.new(0.0171428565, 0, 0.344827592, 0)n.Size= UDim2.new(0, 204, 0, 8)n.Font= Enum.Font.Gotham;n.RichText=true;n.Text=h;n.TextColor3= Color3.fromRGB(245, 245, 245)n.TextSize=16.000;n.TextXAlignment= Enum.TextXAlignment.Left;o.Name="close"o.Parent=k;o.BackgroundTransparency=1.000;o.Position= UDim2.new(0.949999988, 0, 0.137999997, 0)o.Size= UDim2.new(0, 21, 0, 21)o.ZIndex=2;o.Image="rbxassetid://3926305904"o.ImageRectOffset= Vector2.new(284, 4)o.ImageRectSize= Vector2.new(24, 24)o.MouseButton1Click:Connect(function()
        game.TweenService:Create(o, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            ImageTransparency = 1
        }):Play()
        wait()
        game.TweenService:Create(c, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(0,0,0,0),
			Position = UDim2.new(0, c.AbsolutePosition.X + (c.AbsoluteSize.X / 2), 0, c.AbsolutePosition.Y + (c.AbsoluteSize.Y / 2))
		}):Play()
        wait(1)
        b:Destroy()
    end)p.Name="MainSide"p.Parent=c;p.BackgroundColor3= i.Header;f[p]="Header"p.Position= UDim2.new(-7.4505806e-09, 0, 0.0911949649, 0)p.Size= UDim2.new(0, 149, 0, 289)q.CornerRadius= UDim.new(0, 4)q.Name="sideCorner"q.Parent=p;r.Name="coverup"r.Parent=p;r.BackgroundColor3= i.Header;f[r]="Header"r.BorderSizePixel=0;r.Position= UDim2.new(0.949939311, 0, 0, 0)r.Size= UDim2.new(0, 7, 0, 289)s.Name="tabFrames"s.Parent=p;s.BackgroundColor3= Color3.fromRGB(255, 255, 255)s.BackgroundTransparency=1.000;s.Position= UDim2.new(0.0438990258, 0, -0.00066378375, 0)s.Size= UDim2.new(0, 135, 0, 283)t.Name="tabListing"t.Parent=s;t.SortOrder= Enum.SortOrder.LayoutOrder;u.Name="pages"u.Parent=c;u.BackgroundColor3= Color3.fromRGB(255, 255, 255)u.BackgroundTransparency=1.000;u.BorderSizePixel=0;u.Position= UDim2.new(0.299047589, 0, 0.122641519, 0)u.Size= UDim2.new(0, 360, 0, 269)v.Name="Pages"v.Parent=u;w.Name="infoContainer"w.Parent=c;w.BackgroundColor3= Color3.fromRGB(255, 255, 255)w.BackgroundTransparency=1.000;w.BorderColor3= Color3.fromRGB(27, 42, 53)w.ClipsDescendants=true;w.Position= UDim2.new(0.299047619, 0, 0.874213815, 0)w.Size= UDim2.new(0, 368, 0, 33)coroutine.wrap(function()
        while wait() do
            c.BackgroundColor3 = i.Background
            k.BackgroundColor3 = i.Header
            p.BackgroundColor3 = i.Header
            r.BackgroundColor3 = i.Header
            m.BackgroundColor3 = i.Header
        end
    end)()function a:ChangeColor(a,b)if a=="Background"then i.Background=b elseif a=="SchemeColor"then i.SchemeColor=b elseif a=="Header"then i.Header=b elseif a=="TextColor"then i.TextColor=b elseif a=="ElementColor"then i.ElementColor=b end end;local a= {}local b=true;function a:NewTab(c)c=c or"Tab"local g= Instance.new("TextButton")local h= Instance.new("UICorner")local j= Instance.new("ScrollingFrame")local k= Instance.new("UIListLayout")local function l()local a= k.AbsoluteContentSize;game.TweenService:Create(j, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0,a.X,0,a.Y)
            }):Play()end;j.Name="Page"j.Parent=v;j.Active=true;j.BackgroundColor3= i.Background;j.BorderSizePixel=0;j.Position= UDim2.new(0, 0, -0.00371747208, 0)j.Size= UDim2.new(1, 0, 1, 0)j.ScrollBarThickness=5;j.Visible=false;j.ScrollBarImageColor3= Color3.fromRGB(i.SchemeColor.r * 255 - 16, i.SchemeColor.g * 255 - 15, i.SchemeColor.b * 255 - 28)k.Name="pageListing"k.Parent=j;k.SortOrder= Enum.SortOrder.LayoutOrder;k.Padding= UDim.new(0, 5)g.Name=c.."TabButton"g.Parent=s;g.BackgroundColor3= i.SchemeColor;f[g]="SchemeColor"g.Size= UDim2.new(0, 135, 0, 28)g.AutoButtonColor=false;g.Font= Enum.Font.Gotham;g.Text=c;g.TextColor3= i.TextColor;f[g]="TextColor3"g.TextSize=14.000;g.BackgroundTransparency=1;if b then b=false;j.Visible=true;g.BackgroundTransparency=0;l()else j.Visible=false;g.BackgroundTransparency=1 end;h.CornerRadius= UDim.new(0, 5)h.Parent=g;table.insert(a, c)l()j.ChildAdded:Connect(l)j.ChildRemoved:Connect(l)g.MouseButton1Click:Connect(function()
            l()
            for a,a in next, v:GetChildren() do
                a.Visible = false
            end
            j.Visible = true
            for a,a in next, s:GetChildren() do
                if a:IsA("TextButton") then
                    if i.SchemeColor == Color3.fromRGB(255,255,255) then
                        e:TweenObject(a, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)
                    end 
                    if i.SchemeColor == Color3.fromRGB(0,0,0) then
                        e:TweenObject(a, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)
                    end 
                    e:TweenObject(a, {BackgroundTransparency = 1}, 0.2)
                end
            end
            if i.SchemeColor == Color3.fromRGB(255,255,255) then
                e:TweenObject(g, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)
            end 
            if i.SchemeColor == Color3.fromRGB(0,0,0) then
                e:TweenObject(g, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)
            end 
            e:TweenObject(g, {BackgroundTransparency = 0}, 0.2)
        end)local a= {}local b=false;local c=false;coroutine.wrap(function()
            while wait() do
                j.BackgroundColor3 = i.Background
                j.ScrollBarImageColor3 = Color3.fromRGB(i.SchemeColor.r * 255 - 16, i.SchemeColor.g * 255 - 15, i.SchemeColor.b * 255 - 28)
                g.TextColor3 = i.TextColor
                g.BackgroundColor3 = i.SchemeColor
            end
        end)()function a:NewSection(a,h)a=a or"Section"local k= {}local k= {}h=h or false;local m= Instance.new("Frame")local n= Instance.new("UIListLayout")local o= Instance.new("Frame")local p= Instance.new("UICorner")local q= Instance.new("TextLabel")local r= Instance.new("Frame")local s= Instance.new("UIListLayout")if h then o.Visible=false else o.Visible=true end;m.Name="sectionFrame"m.Parent=j;m.BackgroundColor3= i.Background;m.BorderSizePixel=0;n.Name="sectionlistoknvm"n.Parent=m;n.SortOrder= Enum.SortOrder.LayoutOrder;n.Padding= UDim.new(0, 5)for a,a in pairs(r:GetChildren())do while wait()do if a:IsA("Frame")or a:IsA("TextButton")then function size(a)if a=="Size"then l()updateSectionFrame()end end;a.Changed:Connect(size)end end end;o.Name="sectionHead"o.Parent=m;o.BackgroundColor3= i.SchemeColor;f[o]="BackgroundColor3"o.Size= UDim2.new(0, 352, 0, 33)p.CornerRadius= UDim.new(0, 4)p.Name="sHeadCorner"p.Parent=o;q.Name="sectionName"q.Parent=o;q.BackgroundColor3= Color3.fromRGB(255, 255, 255)q.BackgroundTransparency=1.000;q.BorderColor3= Color3.fromRGB(27, 42, 53)q.Position= UDim2.new(0.0198863633, 0, 0, 0)q.Size= UDim2.new(0.980113626, 0, 1, 0)q.Font= Enum.Font.Gotham;q.Text=a;q.RichText=true;q.TextColor3= i.TextColor;f[q]="TextColor3"q.TextSize=14.000;q.TextXAlignment= Enum.TextXAlignment.Left;if i.SchemeColor==Color3.fromRGB(255,255,255)then e:TweenObject(q, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)end;if i.SchemeColor==Color3.fromRGB(0,0,0)then e:TweenObject(q, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)end;r.Name="sectionInners"r.Parent=m;r.BackgroundColor3= Color3.fromRGB(255, 255, 255)r.BackgroundTransparency=1.000;r.Position= UDim2.new(0, 0, 0.190751448, 0)s.Name="sectionElListing"s.Parent=r;s.SortOrder= Enum.SortOrder.LayoutOrder;s.Padding= UDim.new(0, 3)coroutine.wrap(function()
            while wait() do
                m.BackgroundColor3 = i.Background
                o.BackgroundColor3 = i.SchemeColor
                g.TextColor3 = i.TextColor
                g.BackgroundColor3 = i.SchemeColor
                q.TextColor3 = i.TextColor
            end
        end)()local function a()local a= s.AbsoluteContentSize;r.Size= UDim2.new(1, 0, 0, a.Y)local a= n.AbsoluteContentSize;m.Size= UDim2.new(0, 352, 0, a.Y)end;a()l()local g= {}function g:NewButton(d,g,h)showLogo=showLogo or true;local j= {}g=g or"Tip: Clicking this nothing will happen!"d=d or"Click Me!"h=h or function() end;local m= Instance.new("TextButton")local n= Instance.new("UICorner")local o= Instance.new("TextLabel")local p= Instance.new("ImageButton")local q= Instance.new("ImageLabel")local s= Instance.new("ImageLabel")table.insert(k, d)m.Name=d;m.Parent=r;m.BackgroundColor3= i.ElementColor;m.ClipsDescendants=true;m.Size= UDim2.new(0, 352, 0, 33)m.AutoButtonColor=false;m.Font= Enum.Font.SourceSans;m.Text=""m.TextColor3= Color3.fromRGB(0, 0, 0)m.TextSize=14.000;f[m]="BackgroundColor3"n.CornerRadius= UDim.new(0, 4)n.Parent=m;p.Name="viewInfo"p.Parent=m;p.BackgroundTransparency=1.000;p.LayoutOrder=9;p.Position= UDim2.new(0.930000007, 0, 0.151999995, 0)p.Size= UDim2.new(0, 23, 0, 23)p.ZIndex=2;p.Image="rbxassetid://3926305904"p.ImageColor3= i.SchemeColor;f[p]="ImageColor3"p.ImageRectOffset= Vector2.new(764, 764)p.ImageRectSize= Vector2.new(36, 36)s.Name="Sample"s.Parent=m;s.BackgroundColor3= Color3.fromRGB(255, 255, 255)s.BackgroundTransparency=1.000;s.Image="http://www.roblox.com/asset/?id=4560909609"s.ImageColor3= i.SchemeColor;f[s]="ImageColor3"s.ImageTransparency=0.600;local k= Instance.new("TextLabel")local n= Instance.new("UICorner")k.Name="TipMore"k.Parent=w;k.BackgroundColor3= Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)k.Position= UDim2.new(0, 0, 2, 0)k.Size= UDim2.new(0, 353, 0, 33)k.ZIndex=9;k.Font= Enum.Font.GothamSemibold;k.Text="  "..g;k.RichText=true;k.TextColor3= i.TextColor;f[k]="TextColor3"k.TextSize=14.000;k.TextXAlignment= Enum.TextXAlignment.Left;f[k]="BackgroundColor3"n.CornerRadius= UDim.new(0, 4)n.Parent=k;q.Name="touch"q.Parent=m;q.BackgroundColor3= Color3.fromRGB(255, 255, 255)q.BackgroundTransparency=1.000;q.BorderColor3= Color3.fromRGB(27, 42, 53)q.Position= UDim2.new(0.0199999996, 0, 0.180000007, 0)q.Size= UDim2.new(0, 21, 0, 21)q.Image="rbxassetid://3926305904"q.ImageColor3= i.SchemeColor;f[q]="SchemeColor"q.ImageRectOffset= Vector2.new(84, 204)q.ImageRectSize= Vector2.new(36, 36)q.ImageTransparency=0;o.Name="btnInfo"o.Parent=m;o.BackgroundColor3= Color3.fromRGB(255, 255, 255)o.BackgroundTransparency=1.000;o.Position= UDim2.new(0.096704483, 0, 0.272727281, 0)o.Size= UDim2.new(0, 314, 0, 14)o.Font= Enum.Font.GothamSemibold;o.Text=d;o.RichText=true;o.TextColor3= i.TextColor;f[o]="TextColor3"o.TextSize=14.000;o.TextXAlignment= Enum.TextXAlignment.Left;if i.SchemeColor==Color3.fromRGB(255,255,255)then e:TweenObject(k, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)end;if i.SchemeColor==Color3.fromRGB(0,0,0)then e:TweenObject(k, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)end;a()l()local a= game.Players.LocalPlayer:GetMouse()local d=m;local f=s;d.MouseButton1Click:Connect(function()
                    if not b then
                        h()
                        local b = f:Clone()
                        b.Parent = d
                        local a, c = (a.X - b.AbsolutePosition.X), (a.Y - b.AbsolutePosition.Y)
                        b.Position = UDim2.new(0, a, 0, c)
                        local a, c = 0.35, nil
                        if d.AbsoluteSize.X >= d.AbsoluteSize.Y then
                            c = (d.AbsoluteSize.X * 1.5)
                        else
                            c = (d.AbsoluteSize.Y * 1.5)
                        end
                        b:TweenSizeAndPosition(UDim2.new(0, c, 0, c), UDim2.new(0.5, (-c / 2), 0.5, (-c / 2)), 'Out', 'Quad', a, true, nil)
                        for c = 1, 10 do
                            b.ImageTransparency = b.ImageTransparency + 0.05
                            wait(a / 12)
                        end
                        b:Destroy()
                    else
                        for a,a in next, w:GetChildren() do
                            e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            b = false
                        end
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                    end
                end)local a=false;d.MouseEnter:Connect(function()
                    if not b then
                        game.TweenService:Create(d, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 + 8, i.ElementColor.g * 255 + 9, i.ElementColor.b * 255 + 10)
                        }):Play()
                        a = true
                    end
                end)d.MouseLeave:Connect(function()
                    if not b then 
                        game.TweenService:Create(d, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = i.ElementColor
                        }):Play()
                        a = false
                    end
                end)p.MouseButton1Click:Connect(function()
                    if not c then
                        c = true
                        b = true
                        for a,a in next, w:GetChildren() do
                            if a ~= k then
                                e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            end
                        end
                        e:TweenObject(k, {Position = UDim2.new(0,0,0,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 0.5}, 0.2)
                        e:TweenObject(d, {BackgroundColor3 = i.ElementColor}, 0.2)
                        wait(1.5)
                        b = false
                        e:TweenObject(k, {Position = UDim2.new(0,0,2,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                        wait(0)
                        c = false
                    end
                end)coroutine.wrap(function()
                    while wait() do
                        if not a then
                            m.BackgroundColor3 = i.ElementColor
                        end
                        p.ImageColor3 = i.SchemeColor
                        s.ImageColor3 = i.SchemeColor
                        k.BackgroundColor3 = Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)
                        k.TextColor3 = i.TextColor
                        q.ImageColor3 = i.SchemeColor
                        o.TextColor3 = i.TextColor
                    end
                end)()function j:UpdateButton(a)o.Text=a end;return j end;function g:NewTextBox(d,f,g)d=d or"Textbox"f=f or"Gets a value of Textbox"g=g or function() end;local h= Instance.new("TextButton")local j= Instance.new("UICorner")local k= Instance.new("ImageButton")local m= Instance.new("ImageLabel")local n= Instance.new("TextBox")local o= Instance.new("UICorner")local p= Instance.new("TextLabel")h.Name="textboxElement"h.Parent=r;h.BackgroundColor3= i.ElementColor;h.ClipsDescendants=true;h.Size= UDim2.new(0, 352, 0, 33)h.AutoButtonColor=false;h.Font= Enum.Font.SourceSans;h.Text=""h.TextColor3= Color3.fromRGB(0, 0, 0)h.TextSize=14.000;j.CornerRadius= UDim.new(0, 4)j.Parent=h;k.Name="viewInfo"k.Parent=h;k.BackgroundTransparency=1.000;k.LayoutOrder=9;k.Position= UDim2.new(0.930000007, 0, 0.151999995, 0)k.Size= UDim2.new(0, 23, 0, 23)k.ZIndex=2;k.Image="rbxassetid://3926305904"k.ImageColor3= i.SchemeColor;k.ImageRectOffset= Vector2.new(764, 764)k.ImageRectSize= Vector2.new(36, 36)m.Name="write"m.Parent=h;m.BackgroundColor3= Color3.fromRGB(255, 255, 255)m.BackgroundTransparency=1.000;m.BorderColor3= Color3.fromRGB(27, 42, 53)m.Position= UDim2.new(0.0199999996, 0, 0.180000007, 0)m.Size= UDim2.new(0, 21, 0, 21)m.Image="rbxassetid://3926305904"m.ImageColor3= i.SchemeColor;m.ImageRectOffset= Vector2.new(324, 604)m.ImageRectSize= Vector2.new(36, 36)n.Parent=h;n.BackgroundColor3= Color3.fromRGB(i.ElementColor.r * 255 - 6, i.ElementColor.g * 255 - 6, i.ElementColor.b * 255 - 7)n.BorderSizePixel=0;n.ClipsDescendants=true;n.Position= UDim2.new(0.488749921, 0, 0.212121218, 0)n.Size= UDim2.new(0, 150, 0, 18)n.ZIndex=99;n.ClearTextOnFocus=false;n.Font= Enum.Font.Gotham;n.PlaceholderColor3= Color3.fromRGB(i.SchemeColor.r * 255 - 19, i.SchemeColor.g * 255 - 26, i.SchemeColor.b * 255 - 35)n.PlaceholderText="Type here!"n.Text=""n.TextColor3= i.SchemeColor;n.TextSize=12.000;o.CornerRadius= UDim.new(0, 4)o.Parent=n;p.Name="togName"p.Parent=h;p.BackgroundColor3= Color3.fromRGB(255, 255, 255)p.BackgroundTransparency=1.000;p.Position= UDim2.new(0.096704483, 0, 0.272727281, 0)p.Size= UDim2.new(0, 138, 0, 14)p.Font= Enum.Font.GothamSemibold;p.Text=d;p.RichText=true;p.TextColor3= i.TextColor;p.TextSize=14.000;p.TextXAlignment= Enum.TextXAlignment.Left;local d= Instance.new("TextLabel")local j= Instance.new("UICorner")d.Name="TipMore"d.Parent=w;d.BackgroundColor3= Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)d.Position= UDim2.new(0, 0, 2, 0)d.Size= UDim2.new(0, 353, 0, 33)d.ZIndex=9;d.Font= Enum.Font.GothamSemibold;d.RichText=true;d.Text="  "..f;d.TextColor3= Color3.fromRGB(255, 255, 255)d.TextSize=14.000;d.TextXAlignment= Enum.TextXAlignment.Left;if i.SchemeColor==Color3.fromRGB(255,255,255)then e:TweenObject(d, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)end;if i.SchemeColor==Color3.fromRGB(0,0,0)then e:TweenObject(d, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)end;j.CornerRadius= UDim.new(0, 4)j.Parent=d;a()l()local a=h;local f=k;a.MouseButton1Click:Connect(function()
                    if b then
                        for a,a in next, w:GetChildren() do
                            e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            b = false
                        end
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                    end
                end)local f=false;a.MouseEnter:Connect(function()
                    if not b then
                        game.TweenService:Create(a, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 + 8, i.ElementColor.g * 255 + 9, i.ElementColor.b * 255 + 10)
                        }):Play()
                        f = true
                    end 
                end)a.MouseLeave:Connect(function()
                    if not b then
                        game.TweenService:Create(a, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = i.ElementColor
                        }):Play()
                        f = false
                    end
                end)n.FocusLost:Connect(function(a)
                    if b then
                        for a,a in next, w:GetChildren() do
                            e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            b = false
                        end
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                    end
                    if not a then 
                        return
                    else
                        g(n.Text)
                        wait(0.18)
                        n.Text = ""  
                    end
                end)k.MouseButton1Click:Connect(function()
                    if not c then
                        c = true
                        b = true
                        for a,a in next, w:GetChildren() do
                            if a ~= d then
                                e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            end
                        end
                        e:TweenObject(d, {Position = UDim2.new(0,0,0,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 0.5}, 0.2)
                        e:TweenObject(a, {BackgroundColor3 = i.ElementColor}, 0.2)
                        wait(1.5)
                        b = false
                        e:TweenObject(d, {Position = UDim2.new(0,0,2,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                        wait(0)
                        c = false
                    end
                end)coroutine.wrap(function()
                    while wait() do
                        if not f then
                            h.BackgroundColor3 = i.ElementColor
                        end
                        n.BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 - 6, i.ElementColor.g * 255 - 6, i.ElementColor.b * 255 - 7)
                        k.ImageColor3 = i.SchemeColor
                        d.BackgroundColor3 = Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)
                        d.TextColor3 = i.TextColor
                        m.ImageColor3 = i.SchemeColor
                        p.TextColor3 = i.TextColor
                        n.PlaceholderColor3 = Color3.fromRGB(i.SchemeColor.r * 255 - 19, i.SchemeColor.g * 255 - 26, i.SchemeColor.b * 255 - 35)
                        n.TextColor3 = i.SchemeColor
                    end
                end)()end;function g:NewToggle(f,g,h)local j= {}f=f or"Toggle"g=g or"Prints Current Toggle State"h=h or function() end;local k=false;table.insert(d, f)local d= Instance.new("TextButton")local m= Instance.new("UICorner")local n= Instance.new("ImageLabel")local o= Instance.new("ImageLabel")local p= Instance.new("TextLabel")local q= Instance.new("ImageButton")local s= Instance.new("ImageLabel")d.Name="toggleElement"d.Parent=r;d.BackgroundColor3= i.ElementColor;d.ClipsDescendants=true;d.Size= UDim2.new(0, 352, 0, 33)d.AutoButtonColor=false;d.Font= Enum.Font.SourceSans;d.Text=""d.TextColor3= Color3.fromRGB(0, 0, 0)d.TextSize=14.000;m.CornerRadius= UDim.new(0, 4)m.Parent=d;n.Name="toggleDisabled"n.Parent=d;n.BackgroundColor3= Color3.fromRGB(255, 255, 255)n.BackgroundTransparency=1.000;n.Position= UDim2.new(0.0199999996, 0, 0.180000007, 0)n.Size= UDim2.new(0, 21, 0, 21)n.Image="rbxassetid://3926309567"n.ImageColor3= i.SchemeColor;n.ImageRectOffset= Vector2.new(628, 420)n.ImageRectSize= Vector2.new(48, 48)o.Name="toggleEnabled"o.Parent=d;o.BackgroundColor3= Color3.fromRGB(255, 255, 255)o.BackgroundTransparency=1.000;o.Position= UDim2.new(0.0199999996, 0, 0.180000007, 0)o.Size= UDim2.new(0, 21, 0, 21)o.Image="rbxassetid://3926309567"o.ImageColor3= i.SchemeColor;o.ImageRectOffset= Vector2.new(784, 420)o.ImageRectSize= Vector2.new(48, 48)o.ImageTransparency=1.000;p.Name="togName"p.Parent=d;p.BackgroundColor3= Color3.fromRGB(255, 255, 255)p.BackgroundTransparency=1.000;p.Position= UDim2.new(0.096704483, 0, 0.272727281, 0)p.Size= UDim2.new(0, 288, 0, 14)p.Font= Enum.Font.GothamSemibold;p.Text=f;p.RichText=true;p.TextColor3= i.TextColor;p.TextSize=14.000;p.TextXAlignment= Enum.TextXAlignment.Left;q.Name="viewInfo"q.Parent=d;q.BackgroundTransparency=1.000;q.LayoutOrder=9;q.Position= UDim2.new(0.930000007, 0, 0.151999995, 0)q.Size= UDim2.new(0, 23, 0, 23)q.ZIndex=2;q.Image="rbxassetid://3926305904"q.ImageColor3= i.SchemeColor;q.ImageRectOffset= Vector2.new(764, 764)q.ImageRectSize= Vector2.new(36, 36)s.Name="Sample"s.Parent=d;s.BackgroundColor3= Color3.fromRGB(255, 255, 255)s.BackgroundTransparency=1.000;s.Image="http://www.roblox.com/asset/?id=4560909609"s.ImageColor3= i.SchemeColor;s.ImageTransparency=0.600;local f= Instance.new("TextLabel")local m= Instance.new("UICorner")f.Name="TipMore"f.Parent=w;f.BackgroundColor3= Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)f.Position= UDim2.new(0, 0, 2, 0)f.Size= UDim2.new(0, 353, 0, 33)f.ZIndex=9;f.Font= Enum.Font.GothamSemibold;f.RichText=true;f.Text="  "..g;f.TextColor3= i.TextColor;f.TextSize=14.000;f.TextXAlignment= Enum.TextXAlignment.Left;m.CornerRadius= UDim.new(0, 4)m.Parent=f;local g= game.Players.LocalPlayer:GetMouse()if i.SchemeColor==Color3.fromRGB(255,255,255)then e:TweenObject(f, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)end;if i.SchemeColor==Color3.fromRGB(0,0,0)then e:TweenObject(f, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)end;local m=d;local r=s;local t=o;local u=q;a()l()m.MouseButton1Click:Connect(function()
                        if not b then
                            if k == false then
                                game.TweenService:Create(t, TweenInfo.new(0.11, Enum.EasingStyle.Linear,Enum.EasingDirection.In), {
                                    ImageTransparency = 0
                                }):Play()
                                local a = r:Clone()
                                a.Parent = m
                                local b, c = (g.X - a.AbsolutePosition.X), (g.Y - a.AbsolutePosition.Y)
                                a.Position = UDim2.new(0, b, 0, c)
                                local b, c = 0.35, nil
                                if m.AbsoluteSize.X >= m.AbsoluteSize.Y then
                                    c = (m.AbsoluteSize.X * 1.5)
                                else
                                    c = (m.AbsoluteSize.Y * 1.5)
                                end
                                a:TweenSizeAndPosition(UDim2.new(0, c, 0, c), UDim2.new(0.5, (-c / 2), 0.5, (-c / 2)), 'Out', 'Quad', b, true, nil)
                                for c = 1, 10 do
                                    a.ImageTransparency = a.ImageTransparency + 0.05
                                    wait(b / 12)
                                end
                                a:Destroy()
                            else
                                game.TweenService:Create(t, TweenInfo.new(0.11, Enum.EasingStyle.Linear,Enum.EasingDirection.In), {
                                    ImageTransparency = 1
                                }):Play()
                                local a = r:Clone()
                                a.Parent = m
                                local b, c = (g.X - a.AbsolutePosition.X), (g.Y - a.AbsolutePosition.Y)
                                a.Position = UDim2.new(0, b, 0, c)
                                local b, c = 0.35, nil
                                if m.AbsoluteSize.X >= m.AbsoluteSize.Y then
                                    c = (m.AbsoluteSize.X * 1.5)
                                else
                                    c = (m.AbsoluteSize.Y * 1.5)
                                end
                                a:TweenSizeAndPosition(UDim2.new(0, c, 0, c), UDim2.new(0.5, (-c / 2), 0.5, (-c / 2)), 'Out', 'Quad', b, true, nil)
                                for c = 1, 10 do
                                    a.ImageTransparency = a.ImageTransparency + 0.05
                                    wait(b / 12)
                                end
                                a:Destroy()
                            end
                            k = not k
                            pcall(h, k)
                        else
                            for a,a in next, w:GetChildren() do
                                e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                                b = false
                            end
                            e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                        end
                    end)local a=false;m.MouseEnter:Connect(function()
                        if not b then
                            game.TweenService:Create(m, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 + 8, i.ElementColor.g * 255 + 9, i.ElementColor.b * 255 + 10)
                            }):Play()
                            a = true
                        end 
                    end)m.MouseLeave:Connect(function()
                        if not b then
                            game.TweenService:Create(m, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                BackgroundColor3 = i.ElementColor
                            }):Play()
                            a = false
                        end
                    end)coroutine.wrap(function()
                        while wait() do
                            if not a then
                                d.BackgroundColor3 = i.ElementColor
                            end
                            n.ImageColor3 = i.SchemeColor
                            o.ImageColor3 = i.SchemeColor
                            p.TextColor3 = i.TextColor
                            q.ImageColor3 = i.SchemeColor
                            s.ImageColor3 = i.SchemeColor
                            f.BackgroundColor3 = Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)
                            f.TextColor3 = i.TextColor
                        end
                    end)()q.MouseButton1Click:Connect(function()
                        if not c then
                            c = true
                            b = true
                            for a,a in next, w:GetChildren() do
                                if a ~= f then
                                    e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                                end
                            end
                            e:TweenObject(f, {Position = UDim2.new(0,0,0,0)}, 0.2)
                            e:TweenObject(x, {BackgroundTransparency = 0.5}, 0.2)
                            e:TweenObject(m, {BackgroundColor3 = i.ElementColor}, 0.2)
                            wait(1.5)
                            b = false
                            e:TweenObject(f, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                            wait(0)
                            c = false
                        end
                    end)function j:UpdateToggle(a,b)b=b or toggle;if a~=nil then p.Text=a end;if b then k=true;game.TweenService:Create(t, TweenInfo.new(0.11, Enum.EasingStyle.Linear,Enum.EasingDirection.In), {
                                ImageTransparency = 0
                            }):Play()pcall(h, k)else k=false;game.TweenService:Create(t, TweenInfo.new(0.11, Enum.EasingStyle.Linear,Enum.EasingDirection.In), {
                                ImageTransparency = 1
                            }):Play()pcall(h, k)end end;return j end;function g:NewSlider(d,f,g,h,j)d=d or"Slider"f=f or"Slider tip here"g=g or 500;h=h or 16;startVal=startVal or 0;j=j or function() end;local k= Instance.new("TextButton")local m= Instance.new("UICorner")local n= Instance.new("TextLabel")local o= Instance.new("ImageButton")local p= Instance.new("TextButton")local q= Instance.new("UICorner")local s= Instance.new("UIListLayout")local t= Instance.new("Frame")local u= Instance.new("UICorner")local v= Instance.new("ImageLabel")local y= Instance.new("TextLabel")k.Name="sliderElement"k.Parent=r;k.BackgroundColor3= i.ElementColor;k.ClipsDescendants=true;k.Size= UDim2.new(0, 352, 0, 33)k.AutoButtonColor=false;k.Font= Enum.Font.SourceSans;k.Text=""k.TextColor3= Color3.fromRGB(0, 0, 0)k.TextSize=14.000;m.CornerRadius= UDim.new(0, 4)m.Parent=k;n.Name="togName"n.Parent=k;n.BackgroundColor3= Color3.fromRGB(255, 255, 255)n.BackgroundTransparency=1.000;n.Position= UDim2.new(0.096704483, 0, 0.272727281, 0)n.Size= UDim2.new(0, 138, 0, 14)n.Font= Enum.Font.GothamSemibold;n.Text=d;n.RichText=true;n.TextColor3= i.TextColor;n.TextSize=14.000;n.TextXAlignment= Enum.TextXAlignment.Left;o.Name="viewInfo"o.Parent=k;o.BackgroundTransparency=1.000;o.LayoutOrder=9;o.Position= UDim2.new(0.930000007, 0, 0.151999995, 0)o.Size= UDim2.new(0, 23, 0, 23)o.ZIndex=2;o.Image="rbxassetid://3926305904"o.ImageColor3= i.SchemeColor;o.ImageRectOffset= Vector2.new(764, 764)o.ImageRectSize= Vector2.new(36, 36)p.Name="sliderBtn"p.Parent=k;p.BackgroundColor3= Color3.fromRGB(i.ElementColor.r * 255 + 5, i.ElementColor.g * 255 + 5, i.ElementColor.b * 255  + 5)p.BorderSizePixel=0;p.Position= UDim2.new(0.488749951, 0, 0.393939406, 0)p.Size= UDim2.new(0, 149, 0, 6)p.AutoButtonColor=false;p.Font= Enum.Font.SourceSans;p.Text=""p.TextColor3= Color3.fromRGB(0, 0, 0)p.TextSize=14.000;q.Parent=p;s.Parent=p;s.SortOrder= Enum.SortOrder.LayoutOrder;s.VerticalAlignment= Enum.VerticalAlignment.Center;t.Name="sliderDrag"t.Parent=p;t.BackgroundColor3= i.SchemeColor;t.BorderColor3= Color3.fromRGB(74, 99, 135)t.BorderSizePixel=0;t.Size= UDim2.new(-0.671140969, 100,1,0)u.Parent=t;v.Name="write"v.Parent=k;v.BackgroundColor3= Color3.fromRGB(255, 255, 255)v.BackgroundTransparency=1.000;v.BorderColor3= Color3.fromRGB(27, 42, 53)v.Position= UDim2.new(0.0199999996, 0, 0.180000007, 0)v.Size= UDim2.new(0, 21, 0, 21)v.Image="rbxassetid://3926307971"v.ImageColor3= i.SchemeColor;v.ImageRectOffset= Vector2.new(404, 164)v.ImageRectSize= Vector2.new(36, 36)y.Name="val"y.Parent=k;y.BackgroundColor3= Color3.fromRGB(255, 255, 255)y.BackgroundTransparency=1.000;y.Position= UDim2.new(0.352386296, 0, 0.272727281, 0)y.Size= UDim2.new(0, 41, 0, 14)y.Font= Enum.Font.GothamSemibold;y.Text=h;y.TextColor3= i.TextColor;y.TextSize=14.000;y.TextTransparency=1.000;y.TextXAlignment= Enum.TextXAlignment.Right;local d= Instance.new("TextLabel")local m= Instance.new("UICorner")d.Name="TipMore"d.Parent=w;d.BackgroundColor3= Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)d.Position= UDim2.new(0, 0, 2, 0)d.Size= UDim2.new(0, 353, 0, 33)d.ZIndex=9;d.Font= Enum.Font.GothamSemibold;d.Text="  "..f;d.TextColor3= i.TextColor;d.TextSize=14.000;d.RichText=true;d.TextXAlignment= Enum.TextXAlignment.Left;m.CornerRadius= UDim.new(0, 4)m.Parent=d;if i.SchemeColor==Color3.fromRGB(255,255,255)then e:TweenObject(d, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)end;if i.SchemeColor==Color3.fromRGB(0,0,0)then e:TweenObject(d, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)end;a()l()local a= game:GetService("Players").LocalPlayer:GetMouse()local f= game.Players.LocalPlayer:GetMouse()local f= game:GetService("UserInputService")local l=k;local m=o;local m=false;l.MouseEnter:Connect(function()
                    if not b then
                        game.TweenService:Create(l, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 + 8, i.ElementColor.g * 255 + 9, i.ElementColor.b * 255 + 10)
                        }):Play()
                        m = true
                    end 
                end)l.MouseLeave:Connect(function()
                    if not b then
                        game.TweenService:Create(l, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = i.ElementColor
                        }):Play()
                        m = false
                    end
                end)coroutine.wrap(function()
                    while wait() do
                        if not m then
                            k.BackgroundColor3 = i.ElementColor
                        end
                        d.TextColor3 = i.TextColor
                        d.BackgroundColor3 = Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)
                        y.TextColor3 = i.TextColor
                        v.ImageColor3 = i.SchemeColor
                        n.TextColor3 = i.TextColor
                        o.ImageColor3 = i.SchemeColor
                        p.BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 + 5, i.ElementColor.g * 255 + 5, i.ElementColor.b * 255  + 5)
                        t.BackgroundColor3 = i.SchemeColor
                    end
                end)()local k;p.MouseButton1Down:Connect(function()
                    if not b then
                        game.TweenService:Create(y, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            TextTransparency = 0
                        }):Play()
                        k = math.floor((((tonumber(g) - tonumber(h)) / 149) * t.AbsoluteSize.X) + tonumber(h)) or 0
                        pcall(function()
                            j(k)
                        end)
                        t:TweenSize(UDim2.new(0, math.clamp(a.X - t.AbsolutePosition.X, 0, 149), 0, 6), "InOut", "Linear", 0.05, true)
                        moveconnection = a.Move:Connect(function()
                            y.Text = k
                            k = math.floor((((tonumber(g) - tonumber(h)) / 149) * t.AbsoluteSize.X) + tonumber(h))
                            pcall(function()
                                j(k)
                            end)
                            t:TweenSize(UDim2.new(0, math.clamp(a.X - t.AbsolutePosition.X, 0, 149), 0, 6), "InOut", "Linear", 0.05, true)
                        end)
                        releaseconnection = f.InputEnded:Connect(function(b)
                            if b.UserInputType == Enum.UserInputType.MouseButton1 then
                                k = math.floor((((tonumber(g) - tonumber(h)) / 149) * t.AbsoluteSize.X) + tonumber(h))
                                pcall(function()
                                    j(k)
                                end)
                                y.Text = k
                                game.TweenService:Create(y, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                    TextTransparency = 1
                                }):Play()
                                t:TweenSize(UDim2.new(0, math.clamp(a.X - t.AbsolutePosition.X, 0, 149), 0, 6), "InOut", "Linear", 0.05, true)
                                moveconnection:Disconnect()
                                releaseconnection:Disconnect()
                            end
                        end)
                    else
                        for a,a in next, w:GetChildren() do
                            e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            b = false
                        end
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                    end
                end)o.MouseButton1Click:Connect(function()
                    if not c then
                        c = true
                        b = true
                        for a,a in next, w:GetChildren() do
                            if a ~= d then
                                e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            end
                        end
                        e:TweenObject(d, {Position = UDim2.new(0,0,0,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 0.5}, 0.2)
                        e:TweenObject(l, {BackgroundColor3 = i.ElementColor}, 0.2)
                        wait(1.5)
                        b = false
                        e:TweenObject(d, {Position = UDim2.new(0,0,2,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                        wait(0)
                        c = false
                    end
                end)end;function g:NewDropdown(d,f,g,h)local j= {}d=d or"Dropdown"g=g or{}f=f or"Dropdown info"h=h or function() end;local k=false;local m=33;local n= Instance.new("Frame")local o= Instance.new("TextButton")local p= Instance.new("ImageLabel")local q= Instance.new("TextLabel")local s= Instance.new("ImageButton")local t= Instance.new("UICorner")local u= Instance.new("UIListLayout")local v= Instance.new("ImageLabel")local y= game.Players.LocalPlayer:GetMouse()v.Name="Sample"v.Parent=o;v.BackgroundColor3= Color3.fromRGB(255, 255, 255)v.BackgroundTransparency=1.000;v.Image="http://www.roblox.com/asset/?id=4560909609"v.ImageColor3= i.SchemeColor;v.ImageTransparency=0.600;n.Name="dropFrame"n.Parent=r;n.BackgroundColor3= i.Background;n.BorderSizePixel=0;n.Position= UDim2.new(0, 0, 1.23571432, 0)n.Size= UDim2.new(0, 352, 0, 33)n.ClipsDescendants=true;local r=v;local v=o;o.Name="dropOpen"o.Parent=n;o.BackgroundColor3= i.ElementColor;o.Size= UDim2.new(0, 352, 0, 33)o.AutoButtonColor=false;o.Font= Enum.Font.SourceSans;o.Text=""o.TextColor3= Color3.fromRGB(0, 0, 0)o.TextSize=14.000;o.ClipsDescendants=true;o.MouseButton1Click:Connect(function()
                    if not b then
                        if k then
                            k = false
                            n:TweenSize(UDim2.new(0, 352, 0, 33), "InOut", "Linear", 0.08)
                            wait(0.1)
                            a()
                            l()
                            local a = r:Clone()
                            a.Parent = v
                            local b, c = (y.X - a.AbsolutePosition.X), (y.Y - a.AbsolutePosition.Y)
                            a.Position = UDim2.new(0, b, 0, c)
                            local b, c = 0.35, nil
                            if v.AbsoluteSize.X >= v.AbsoluteSize.Y then
                                c = (v.AbsoluteSize.X * 1.5)
                            else
                                c = (v.AbsoluteSize.Y * 1.5)
                            end
                            a:TweenSizeAndPosition(UDim2.new(0, c, 0, c), UDim2.new(0.5, (-c / 2), 0.5, (-c / 2)), 'Out', 'Quad', b, true, nil)
                            for c = 1, 10 do
                                a.ImageTransparency = a.ImageTransparency + 0.05
                                wait(b / 12)
                            end
                            a:Destroy()
                        else
                            k = true
                            n:TweenSize(UDim2.new(0, 352, 0, u.AbsoluteContentSize.Y), "InOut", "Linear", 0.08, true)
                            wait(0.1)
                            a()
                            l()
                            local a = r:Clone()
                            a.Parent = v
                            local b, c = (y.X - a.AbsolutePosition.X), (y.Y - a.AbsolutePosition.Y)
                            a.Position = UDim2.new(0, b, 0, c)
                            local b, c = 0.35, nil
                            if v.AbsoluteSize.X >= v.AbsoluteSize.Y then
                                c = (v.AbsoluteSize.X * 1.5)
                            else
                                c = (v.AbsoluteSize.Y * 1.5)
                            end
                            a:TweenSizeAndPosition(UDim2.new(0, c, 0, c), UDim2.new(0.5, (-c / 2), 0.5, (-c / 2)), 'Out', 'Quad', b, true, nil)
                            for c = 1, 10 do
                                a.ImageTransparency = a.ImageTransparency + 0.05
                                wait(b / 12)
                            end
                            a:Destroy()
                        end
                    else
                        for a,a in next, w:GetChildren() do
                            e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            b = false
                        end
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                    end
                end)p.Name="listImg"p.Parent=o;p.BackgroundColor3= Color3.fromRGB(255, 255, 255)p.BackgroundTransparency=1.000;p.BorderColor3= Color3.fromRGB(27, 42, 53)p.Position= UDim2.new(0.0199999996, 0, 0.180000007, 0)p.Size= UDim2.new(0, 21, 0, 21)p.Image="rbxassetid://3926305904"p.ImageColor3= i.SchemeColor;p.ImageRectOffset= Vector2.new(644, 364)p.ImageRectSize= Vector2.new(36, 36)q.Name="itemTextbox"q.Parent=o;q.BackgroundColor3= Color3.fromRGB(255, 255, 255)q.BackgroundTransparency=1.000;q.Position= UDim2.new(0.0970000029, 0, 0.273000002, 0)q.Size= UDim2.new(0, 138, 0, 14)q.Font= Enum.Font.GothamSemibold;q.Text=d;q.RichText=true;q.TextColor3= i.TextColor;q.TextSize=14.000;q.TextXAlignment= Enum.TextXAlignment.Left;s.Name="viewInfo"s.Parent=o;s.BackgroundTransparency=1.000;s.LayoutOrder=9;s.Position= UDim2.new(0.930000007, 0, 0.151999995, 0)s.Size= UDim2.new(0, 23, 0, 23)s.ZIndex=2;s.Image="rbxassetid://3926305904"s.ImageColor3= i.SchemeColor;s.ImageRectOffset= Vector2.new(764, 764)s.ImageRectSize= Vector2.new(36, 36)t.CornerRadius= UDim.new(0, 4)t.Parent=o;local d= Instance.new("ImageLabel")d.Name="Sample"d.Parent=o;d.BackgroundColor3= Color3.fromRGB(255, 255, 255)d.BackgroundTransparency=1.000;d.Image="http://www.roblox.com/asset/?id=4560909609"d.ImageColor3= i.SchemeColor;d.ImageTransparency=0.600;u.Parent=n;u.SortOrder= Enum.SortOrder.LayoutOrder;u.Padding= UDim.new(0, 3)a()l()local r= game.Players.LocalPlayer:GetMouse()local r= game:GetService("UserInputService")local r=s;local r= Instance.new("TextLabel")local t= Instance.new("UICorner")r.Name="TipMore"r.Parent=w;r.BackgroundColor3= Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)r.Position= UDim2.new(0, 0, 2, 0)r.Size= UDim2.new(0, 353, 0, 33)r.ZIndex=9;r.RichText=true;r.Font= Enum.Font.GothamSemibold;r.Text="  "..f;r.TextColor3= i.TextColor;r.TextSize=14.000;r.TextXAlignment= Enum.TextXAlignment.Left;local f=false;v.MouseEnter:Connect(function()
                    if not b then
                        game.TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 + 8, i.ElementColor.g * 255 + 9, i.ElementColor.b * 255 + 10)
                        }):Play()
                        f = true
                    end 
                end)v.MouseLeave:Connect(function()
                    if not b then
                        game.TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = i.ElementColor
                        }):Play()
                        f = false
                    end
                end)coroutine.wrap(function()
                    while wait() do
                        if not f then
                            o.BackgroundColor3 = i.ElementColor
                        end
                        d.ImageColor3 = i.SchemeColor
                        n.BackgroundColor3 = i.Background
                        p.ImageColor3 = i.SchemeColor
                        q.TextColor3 = i.TextColor
                        s.ImageColor3 = i.SchemeColor
                        r.BackgroundColor3 = Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)
                        r.TextColor3 = i.TextColor
                    end
                end)()t.CornerRadius= UDim.new(0, 4)t.Parent=r;if i.SchemeColor==Color3.fromRGB(255,255,255)then e:TweenObject(r, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)end;if i.SchemeColor==Color3.fromRGB(0,0,0)then e:TweenObject(r, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)end;s.MouseButton1Click:Connect(function()
                    if not c then
                        c = true
                        b = true
                        for a,a in next, w:GetChildren() do
                            if a ~= r then
                                e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            end
                        end
                        e:TweenObject(r, {Position = UDim2.new(0,0,0,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 0.5}, 0.2)
                        e:TweenObject(v, {BackgroundColor3 = i.ElementColor}, 0.2)
                        wait(1.5)
                        b = false
                        e:TweenObject(r, {Position = UDim2.new(0,0,2,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                        wait(0)
                        c = false
                    end
                end)for c,c in next,g do local d= Instance.new("TextButton")local f= Instance.new("UICorner")local g= Instance.new("ImageLabel")local j= game.Players.LocalPlayer:GetMouse()g.Name="Sample1"g.Parent=d;g.BackgroundColor3= Color3.fromRGB(255, 255, 255)g.BackgroundTransparency=1.000;g.Image="http://www.roblox.com/asset/?id=4560909609"g.ImageColor3= i.SchemeColor;g.ImageTransparency=0.600;local o=g;m=m+33;d.Name="optionSelect"d.Parent=n;d.BackgroundColor3= i.ElementColor;d.Position= UDim2.new(0, 0, 0.235294119, 0)d.Size= UDim2.new(0, 352, 0, 33)d.AutoButtonColor=false;d.Font= Enum.Font.GothamSemibold;d.Text="  "..c;d.TextColor3= Color3.fromRGB(i.TextColor.r * 255 - 6, i.TextColor.g * 255 - 6, i.TextColor.b * 255 - 6)d.TextSize=14.000;d.TextXAlignment= Enum.TextXAlignment.Left;d.ClipsDescendants=true;d.MouseButton1Click:Connect(function()
                        if not b then
                            k = false
                            h(c)
                            q.Text = c
                            n:TweenSize(UDim2.new(0, 352, 0, 33), 'InOut', 'Linear', 0.08)
                            wait(0.1)
                            a()
                            l()
                            local a = o:Clone()
                            a.Parent = d
                            local b, c = (j.X - a.AbsolutePosition.X), (j.Y - a.AbsolutePosition.Y)
                            a.Position = UDim2.new(0, b, 0, c)
                            local b, c = 0.35, nil
                            if d.AbsoluteSize.X >= d.AbsoluteSize.Y then
                                c = (d.AbsoluteSize.X * 1.5)
                            else
                                c = (d.AbsoluteSize.Y * 1.5)
                            end
                            a:TweenSizeAndPosition(UDim2.new(0, c, 0, c), UDim2.new(0.5, (-c / 2), 0.5, (-c / 2)), 'Out', 'Quad', b, true, nil)
                            for c = 1, 10 do
                                a.ImageTransparency = a.ImageTransparency + 0.05
                                wait(b / 12)
                            end
                            a:Destroy()         
                        else
                            for a,a in next, w:GetChildren() do
                                e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                                b = false
                            end
                            e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                        end
                    end)f.CornerRadius= UDim.new(0, 4)f.Parent=d;local a=false;d.MouseEnter:Connect(function()
                        if not b then
                            game.TweenService:Create(d, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 + 8, i.ElementColor.g * 255 + 9, i.ElementColor.b * 255 + 10)
                            }):Play()
                            a = true
                        end 
                    end)d.MouseLeave:Connect(function()
                        if not b then
                            game.TweenService:Create(d, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                BackgroundColor3 = i.ElementColor
                            }):Play()
                            a = false
                        end
                    end)coroutine.wrap(function()
                        while wait() do
                            if not a then
                                d.BackgroundColor3 = i.ElementColor
                            end
                            d.TextColor3 = Color3.fromRGB(i.TextColor.r * 255 - 6, i.TextColor.g * 255 - 6, i.TextColor.b * 255 - 6)
                            g.ImageColor3 = i.SchemeColor
                        end
                    end)()end;function j:Refresh(c)c=c or{}for a,a in next, n:GetChildren()do if a.Name=="optionSelect"then a:Destroy()end end;for c,c in next,c do local d= Instance.new("TextButton")local f= Instance.new("UICorner")local g= Instance.new("ImageLabel")local j= game.Players.LocalPlayer:GetMouse()g.Name="Sample11"g.Parent=d;g.BackgroundColor3= Color3.fromRGB(255, 255, 255)g.BackgroundTransparency=1.000;g.Image="http://www.roblox.com/asset/?id=4560909609"g.ImageColor3= i.SchemeColor;g.ImageTransparency=0.600;local o=g;m=m+33;d.Name="optionSelect"d.Parent=n;d.BackgroundColor3= i.ElementColor;d.Position= UDim2.new(0, 0, 0.235294119, 0)d.Size= UDim2.new(0, 352, 0, 33)d.AutoButtonColor=false;d.Font= Enum.Font.GothamSemibold;d.Text="  "..c;d.TextColor3= Color3.fromRGB(i.TextColor.r * 255 - 6, i.TextColor.g * 255 - 6, i.TextColor.b * 255 - 6)d.TextSize=14.000;d.TextXAlignment= Enum.TextXAlignment.Left;d.ClipsDescendants=true;f.CornerRadius= UDim.new(0, 4)f.Parent=d;d.MouseButton1Click:Connect(function()
                            if not b then
                                k = false
                                h(c)
                                q.Text = c
                                n:TweenSize(UDim2.new(0, 352, 0, 33), 'InOut', 'Linear', 0.08)
                                wait(0.1)
                                a()
                                l()
                                local a = o:Clone()
                                a.Parent = d
                                local b, c = (j.X - a.AbsolutePosition.X), (j.Y - a.AbsolutePosition.Y)
                                a.Position = UDim2.new(0, b, 0, c)
                                local b, c = 0.35, nil
                                if d.AbsoluteSize.X >= d.AbsoluteSize.Y then
                                    c = (d.AbsoluteSize.X * 1.5)
                                else
                                    c = (d.AbsoluteSize.Y * 1.5)
                                end
                                a:TweenSizeAndPosition(UDim2.new(0, c, 0, c), UDim2.new(0.5, (-c / 2), 0.5, (-c / 2)), 'Out', 'Quad', b, true, nil)
                                for c = 1, 10 do
                                    a.ImageTransparency = a.ImageTransparency + 0.05
                                    wait(b / 12)
                                end
                                a:Destroy()         
                            else
                                for a,a in next, w:GetChildren() do
                                    e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                                    b = false
                                end
                                e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                            end
                        end)a()l()local a=false;d.MouseEnter:Connect(function()
                            if not b then
                                game.TweenService:Create(d, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                    BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 + 8, i.ElementColor.g * 255 + 9, i.ElementColor.b * 255 + 10)
                                }):Play()
                                a = true
                            end 
                        end)d.MouseLeave:Connect(function()
                            if not b then
                                game.TweenService:Create(d, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                    BackgroundColor3 = i.ElementColor
                                }):Play()
                                a = false
                            end
                        end)coroutine.wrap(function()
                            while wait() do
                                if not oHover then
                                    d.BackgroundColor3 = i.ElementColor
                                end
                                d.TextColor3 = Color3.fromRGB(i.TextColor.r * 255 - 6, i.TextColor.g * 255 - 6, i.TextColor.b * 255 - 6)
                                g.ImageColor3 = i.SchemeColor
                            end
                        end)()end;if k then n:TweenSize(UDim2.new(0, 352, 0, u.AbsoluteContentSize.Y), "InOut", "Linear", 0.08, true)wait(0.1)a()l()else n:TweenSize(UDim2.new(0, 352, 0, 33), "InOut", "Linear", 0.08)wait(0.1)a()l()end end;return j end;function g:NewKeybind(d,f,g,h)d=d or"KeybindText"f=f or"KebindInfo"h=h or function() end;local g= g.Name;local j= Instance.new("TextButton")local k= Instance.new("UICorner")local m= Instance.new("TextLabel")local n= Instance.new("ImageButton")local o= Instance.new("ImageLabel")local p= Instance.new("ImageLabel")local q= Instance.new("TextLabel")local s= game.Players.LocalPlayer:GetMouse()local t= game:GetService("UserInputService")local t=n;local t= Instance.new("TextLabel")local u= Instance.new("UICorner")local v=p;j.Name="keybindElement"j.Parent=r;j.BackgroundColor3= i.ElementColor;j.ClipsDescendants=true;j.Size= UDim2.new(0, 352, 0, 33)j.AutoButtonColor=false;j.Font= Enum.Font.SourceSans;j.Text=""j.TextColor3= Color3.fromRGB(0, 0, 0)j.TextSize=14.000;j.MouseButton1Click:connect(function(a) 
                    if not b then
                        q.Text = ". . ."
                        local a, b = game:GetService('UserInputService').InputBegan:wait();
                        if a.KeyCode.Name ~= "Unknown" then
                            q.Text = a.KeyCode.Name
                            g = a.KeyCode.Name;
                        end
                        local a = v:Clone()
                        a.Parent = j
                        local b, c = (s.X - a.AbsolutePosition.X), (s.Y - a.AbsolutePosition.Y)
                        a.Position = UDim2.new(0, b, 0, c)
                        local b, c = 0.35, nil
                        if j.AbsoluteSize.X >= j.AbsoluteSize.Y then
                            c = (j.AbsoluteSize.X * 1.5)
                        else
                            c = (j.AbsoluteSize.Y * 1.5)
                        end
                        a:TweenSizeAndPosition(UDim2.new(0, c, 0, c), UDim2.new(0.5, (-c / 2), 0.5, (-c / 2)), 'Out', 'Quad', b, true, nil)
                        for c = 1, 10 do
                        a.ImageTransparency = a.ImageTransparency + 0.05
                            wait(b / 12)
                        end
                    else
                        for a,a in next, w:GetChildren() do
                            e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            b = false
                        end
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                    end
                end)game:GetService("UserInputService").InputBegan:connect(function(a, b) 
                    if not b then 
                        if a.KeyCode.Name == g then 
                            h()
                        end
                    end
                end)t.Name="TipMore"t.Parent=w;t.BackgroundColor3= Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)t.Position= UDim2.new(0, 0, 2, 0)t.Size= UDim2.new(0, 353, 0, 33)t.ZIndex=9;t.RichText=true;t.Font= Enum.Font.GothamSemibold;t.Text="  "..f;t.TextColor3= i.TextColor;t.TextSize=14.000;t.TextXAlignment= Enum.TextXAlignment.Left;p.Name="Sample"p.Parent=j;p.BackgroundColor3= Color3.fromRGB(255, 255, 255)p.BackgroundTransparency=1.000;p.Image="http://www.roblox.com/asset/?id=4560909609"p.ImageColor3= i.SchemeColor;p.ImageTransparency=0.600;m.Name="togName"m.Parent=j;m.BackgroundColor3= i.TextColor;m.BackgroundTransparency=1.000;m.Position= UDim2.new(0.096704483, 0, 0.272727281, 0)m.Size= UDim2.new(0, 222, 0, 14)m.Font= Enum.Font.GothamSemibold;m.Text=d;m.RichText=true;m.TextColor3= i.TextColor;m.TextSize=14.000;m.TextXAlignment= Enum.TextXAlignment.Left;n.Name="viewInfo"n.Parent=j;n.BackgroundTransparency=1.000;n.LayoutOrder=9;n.Position= UDim2.new(0.930000007, 0, 0.151999995, 0)n.Size= UDim2.new(0, 23, 0, 23)n.ZIndex=2;n.Image="rbxassetid://3926305904"n.ImageColor3= i.SchemeColor;n.ImageRectOffset= Vector2.new(764, 764)n.ImageRectSize= Vector2.new(36, 36)n.MouseButton1Click:Connect(function()
                    if not c then
                        c = true
                        b = true
                        for a,a in next, w:GetChildren() do
                            if a ~= t then
                                e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            end
                        end
                        e:TweenObject(t, {Position = UDim2.new(0,0,0,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 0.5}, 0.2)
                        e:TweenObject(j, {BackgroundColor3 = i.ElementColor}, 0.2)
                        wait(1.5)
                        b = false
                        e:TweenObject(t, {Position = UDim2.new(0,0,2,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                        wait(0)
                        c = false
                    end
                end)a()l()local a=false;j.MouseEnter:Connect(function()
                    if not b then
                        game.TweenService:Create(j, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 + 8, i.ElementColor.g * 255 + 9, i.ElementColor.b * 255 + 10)
                        }):Play()
                        a = true
                    end 
                end)j.MouseLeave:Connect(function()
                    if not b then
                        game.TweenService:Create(j, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = i.ElementColor
                        }):Play()
                        a = false
                    end
                end)u.CornerRadius= UDim.new(0, 4)u.Parent=t;if i.SchemeColor==Color3.fromRGB(255,255,255)then e:TweenObject(t, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)end;if i.SchemeColor==Color3.fromRGB(0,0,0)then e:TweenObject(t, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)end;k.CornerRadius= UDim.new(0, 4)k.Parent=j;o.Name="touch"o.Parent=j;o.BackgroundColor3= Color3.fromRGB(255, 255, 255)o.BackgroundTransparency=1.000;o.BorderColor3= Color3.fromRGB(27, 42, 53)o.Position= UDim2.new(0.0199999996, 0, 0.180000007, 0)o.Size= UDim2.new(0, 21, 0, 21)o.Image="rbxassetid://3926305904"o.ImageColor3= i.SchemeColor;o.ImageRectOffset= Vector2.new(364, 284)o.ImageRectSize= Vector2.new(36, 36)q.Name="togName"q.Parent=j;q.BackgroundColor3= Color3.fromRGB(255, 255, 255)q.BackgroundTransparency=1.000;q.Position= UDim2.new(0.727386296, 0, 0.272727281, 0)q.Size= UDim2.new(0, 70, 0, 14)q.Font= Enum.Font.GothamSemibold;q.Text=g;q.TextColor3= i.SchemeColor;q.TextSize=14.000;q.TextXAlignment= Enum.TextXAlignment.Right;coroutine.wrap(function()
                    while wait() do
                        if not a then
                            j.BackgroundColor3 = i.ElementColor
                        end
                        q.TextColor3 = i.SchemeColor
                        o.ImageColor3 = i.SchemeColor
                        n.ImageColor3 = i.SchemeColor
                        m.BackgroundColor3 = i.TextColor
                        m.TextColor3 = i.TextColor
                        p.ImageColor3 = i.SchemeColor
                        t.TextColor3 = i.TextColor
                        t.BackgroundColor3 = Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)

                    end
                end)()end;function g:NewColorPicker(d,f,g,h)d=d or"ColorPicker"h=h or function() end;g=g or Color3.fromRGB(1,1,1)local j,k,m= Color3.toHSV(g)local n= game.Players.LocalPlayer:GetMouse()local o=false;local p= Instance.new("TextButton")local q= Instance.new("UICorner")local s= Instance.new("Frame")local t= Instance.new("UICorner")local u= Instance.new("ImageLabel")local v= Instance.new("TextLabel")local y= Instance.new("ImageButton")local z= Instance.new("Frame")local A= Instance.new("UICorner")local B= Instance.new("UIListLayout")local C= Instance.new("Frame")local D= Instance.new("UICorner")local E= Instance.new("ImageButton")local F= Instance.new("UICorner")local G= Instance.new("ImageLabel")local H= Instance.new("ImageButton")local I= Instance.new("UICorner")local J= Instance.new("ImageLabel")local K= Instance.new("ImageLabel")local L= Instance.new("ImageLabel")local M= Instance.new("TextButton")local N= Instance.new("TextLabel")local O= Instance.new("ImageLabel")O.Name="Sample"O.Parent=s;O.BackgroundColor3= Color3.fromRGB(255, 255, 255)O.BackgroundTransparency=1.000;O.Image="http://www.roblox.com/asset/?id=4560909609"O.ImageColor3= i.SchemeColor;O.ImageTransparency=0.600;local P=s;local Q=O;p.Name="colorElement"p.Parent=r;p.BackgroundColor3= i.ElementColor;p.BackgroundTransparency=1.000;p.ClipsDescendants=true;p.Position= UDim2.new(0, 0, 0.566834569, 0)p.Size= UDim2.new(0, 352, 0, 33)p.AutoButtonColor=false;p.Font= Enum.Font.SourceSans;p.Text=""p.TextColor3= Color3.fromRGB(0, 0, 0)p.TextSize=14.000;p.MouseButton1Click:Connect(function()
                    if not b then
                        if o then
                            o = false
                            p:TweenSize(UDim2.new(0, 352, 0, 33), "InOut", "Linear", 0.08)
                            wait(0.1)
                            a()
                            l()
                            local a = Q:Clone()
                            a.Parent = P
                            local b, c = (n.X - a.AbsolutePosition.X), (n.Y - a.AbsolutePosition.Y)
                            a.Position = UDim2.new(0, b, 0, c)
                            local b, c = 0.35, nil
                            if P.AbsoluteSize.X >= P.AbsoluteSize.Y then
                                c = (P.AbsoluteSize.X * 1.5)
                            else
                                c = (P.AbsoluteSize.Y * 1.5)
                            end
                            a:TweenSizeAndPosition(UDim2.new(0, c, 0, c), UDim2.new(0.5, (-c / 2), 0.5, (-c / 2)), 'Out', 'Quad', b, true, nil)
                            for c = 1, 10 do
                                a.ImageTransparency = a.ImageTransparency + 0.05
                                wait(b / 12)
                            end
                            a:Destroy()
                        else
                            o = true
                            p:TweenSize(UDim2.new(0, 352, 0, 141), "InOut", "Linear", 0.08, true)
                            wait(0.1)
                            a()
                            l()
                            local a = Q:Clone()
                            a.Parent = P
                            local b, c = (n.X - a.AbsolutePosition.X), (n.Y - a.AbsolutePosition.Y)
                            a.Position = UDim2.new(0, b, 0, c)
                            local b, c = 0.35, nil
                            if P.AbsoluteSize.X >= P.AbsoluteSize.Y then
                                c = (P.AbsoluteSize.X * 1.5)
                            else
                                c = (P.AbsoluteSize.Y * 1.5)
                            end
                            a:TweenSizeAndPosition(UDim2.new(0, c, 0, c), UDim2.new(0.5, (-c / 2), 0.5, (-c / 2)), 'Out', 'Quad', b, true, nil)
                            for c = 1, 10 do
                                a.ImageTransparency = a.ImageTransparency + 0.05
                                wait(b / 12)
                            end
                            a:Destroy()
                        end
                    else
                        for a,a in next, w:GetChildren() do
                            e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            b = false
                        end
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                    end
                end)q.CornerRadius= UDim.new(0, 4)q.Parent=p;s.Name="colorHeader"s.Parent=p;s.BackgroundColor3= i.ElementColor;s.Size= UDim2.new(0, 352, 0, 33)s.ClipsDescendants=true;t.CornerRadius= UDim.new(0, 4)t.Parent=s;u.Name="touch"u.Parent=s;u.BackgroundColor3= Color3.fromRGB(255, 255, 255)u.BackgroundTransparency=1.000;u.BorderColor3= Color3.fromRGB(27, 42, 53)u.Position= UDim2.new(0.0199999996, 0, 0.180000007, 0)u.Size= UDim2.new(0, 21, 0, 21)u.Image="rbxassetid://3926305904"u.ImageColor3= i.SchemeColor;u.ImageRectOffset= Vector2.new(44, 964)u.ImageRectSize= Vector2.new(36, 36)v.Name="togName"v.Parent=s;v.BackgroundColor3= Color3.fromRGB(255, 255, 255)v.BackgroundTransparency=1.000;v.Position= UDim2.new(0.096704483, 0, 0.272727281, 0)v.Size= UDim2.new(0, 288, 0, 14)v.Font= Enum.Font.GothamSemibold;v.Text=d;v.TextColor3= i.TextColor;v.TextSize=14.000;v.RichText=true;v.TextXAlignment= Enum.TextXAlignment.Left;local d= Instance.new("TextLabel")local n= Instance.new("UICorner")d.Name="TipMore"d.Parent=w;d.BackgroundColor3= Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)d.Position= UDim2.new(0, 0, 2, 0)d.Size= UDim2.new(0, 353, 0, 33)d.ZIndex=9;d.Font= Enum.Font.GothamSemibold;d.Text="  "..f;d.TextColor3= i.TextColor;d.TextSize=14.000;d.RichText=true;d.TextXAlignment= Enum.TextXAlignment.Left;n.CornerRadius= UDim.new(0, 4)n.Parent=d;y.Name="viewInfo"y.Parent=s;y.BackgroundTransparency=1.000;y.LayoutOrder=9;y.Position= UDim2.new(0.930000007, 0, 0.151999995, 0)y.Size= UDim2.new(0, 23, 0, 23)y.ZIndex=2;y.Image="rbxassetid://3926305904"y.ImageColor3= i.SchemeColor;y.ImageRectOffset= Vector2.new(764, 764)y.ImageRectSize= Vector2.new(36, 36)y.MouseButton1Click:Connect(function()
                    if not c then
                        c = true
                        b = true
                        for a,a in next, w:GetChildren() do
                            if a ~= d then
                                e:TweenObject(a, {Position = UDim2.new(0,0,2,0)}, 0.2)
                            end
                        end
                        e:TweenObject(d, {Position = UDim2.new(0,0,0,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 0.5}, 0.2)
                        e:TweenObject(p, {BackgroundColor3 = i.ElementColor}, 0.2)
                        wait(1.5)
                        b = false
                        e:TweenObject(d, {Position = UDim2.new(0,0,2,0)}, 0.2)
                        e:TweenObject(x, {BackgroundTransparency = 1}, 0.2)
                        wait(0)
                        c = false
                    end
                end)z.Name="colorCurrent"z.Parent=s;z.BackgroundColor3=g;z.Position= UDim2.new(0.792613626, 0, 0.212121218, 0)z.Size= UDim2.new(0, 42, 0, 18)A.CornerRadius= UDim.new(0, 4)A.Parent=z;B.Parent=p;B.SortOrder= Enum.SortOrder.LayoutOrder;B.Padding= UDim.new(0, 3)C.Name="colorInners"C.Parent=p;C.BackgroundColor3= i.ElementColor;C.Position= UDim2.new(0, 0, 0.255319148, 0)C.Size= UDim2.new(0, 352, 0, 105)D.CornerRadius= UDim.new(0, 4)D.Parent=C;E.Name="rgb"E.Parent=C;E.BackgroundColor3= Color3.fromRGB(255, 255, 255)E.BackgroundTransparency=1.000;E.Position= UDim2.new(0.0198863633, 0, 0.0476190485, 0)E.Size= UDim2.new(0, 211, 0, 93)E.Image="http://www.roblox.com/asset/?id=6523286724"F.CornerRadius= UDim.new(0, 4)F.Parent=E;G.Name="rbgcircle"G.Parent=E;G.BackgroundColor3= Color3.fromRGB(255, 255, 255)G.BackgroundTransparency=1.000;G.Size= UDim2.new(0, 14, 0, 14)G.Image="rbxassetid://3926309567"G.ImageColor3= Color3.fromRGB(0, 0, 0)G.ImageRectOffset= Vector2.new(628, 420)G.ImageRectSize= Vector2.new(48, 48)H.Name="darkness"H.Parent=C;H.BackgroundColor3= Color3.fromRGB(255, 255, 255)H.BackgroundTransparency=1.000;H.Position= UDim2.new(0.636363626, 0, 0.0476190485, 0)H.Size= UDim2.new(0, 18, 0, 93)H.Image="http://www.roblox.com/asset/?id=6523291212"I.CornerRadius= UDim.new(0, 4)I.Parent=H;J.Name="darkcircle"J.Parent=H;J.AnchorPoint= Vector2.new(0.5, 0)J.BackgroundColor3= Color3.fromRGB(255, 255, 255)J.BackgroundTransparency=1.000;J.Size= UDim2.new(0, 14, 0, 14)J.Image="rbxassetid://3926309567"J.ImageColor3= Color3.fromRGB(0, 0, 0)J.ImageRectOffset= Vector2.new(628, 420)J.ImageRectSize= Vector2.new(48, 48)K.Name="toggleDisabled"K.Parent=C;K.BackgroundColor3= Color3.fromRGB(255, 255, 255)K.BackgroundTransparency=1.000;K.Position= UDim2.new(0.704659104, 0, 0.0657142699, 0)K.Size= UDim2.new(0, 21, 0, 21)K.Image="rbxassetid://3926309567"K.ImageColor3= i.SchemeColor;K.ImageRectOffset= Vector2.new(628, 420)K.ImageRectSize= Vector2.new(48, 48)L.Name="toggleEnabled"L.Parent=C;L.BackgroundColor3= Color3.fromRGB(255, 255, 255)L.BackgroundTransparency=1.000;L.Position= UDim2.new(0.704999983, 0, 0.0659999996, 0)L.Size= UDim2.new(0, 21, 0, 21)L.Image="rbxassetid://3926309567"L.ImageColor3= i.SchemeColor;L.ImageRectOffset= Vector2.new(784, 420)L.ImageRectSize= Vector2.new(48, 48)L.ImageTransparency=1.000;M.Name="onrainbow"M.Parent=L;M.BackgroundColor3= Color3.fromRGB(255, 255, 255)M.BackgroundTransparency=1.000;M.Position= UDim2.new(2.90643607e-06, 0, 0, 0)M.Size= UDim2.new(1, 0, 1, 0)M.Font= Enum.Font.SourceSans;M.Text=""M.TextColor3= Color3.fromRGB(0, 0, 0)M.TextSize=14.000;N.Name="togName"N.Parent=C;N.BackgroundColor3= Color3.fromRGB(255, 255, 255)N.BackgroundTransparency=1.000;N.Position= UDim2.new(0.779999971, 0, 0.100000001, 0)N.Size= UDim2.new(0, 278, 0, 14)N.Font= Enum.Font.GothamSemibold;N.Text="Rainbow"N.TextColor3= i.TextColor;N.TextSize=14.000;N.TextXAlignment= Enum.TextXAlignment.Left;if i.SchemeColor==Color3.fromRGB(255,255,255)then e:TweenObject(d, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)end;if i.SchemeColor==Color3.fromRGB(0,0,0)then e:TweenObject(d, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)end;local c=false;p.MouseEnter:Connect(function()
                    if not b then
                        game.TweenService:Create(p, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(i.ElementColor.r * 255 + 8, i.ElementColor.g * 255 + 9, i.ElementColor.b * 255 + 10)
                        }):Play()
                        c = true
                    end 
                end)p.MouseLeave:Connect(function()
                    if not b then
                        game.TweenService:Create(p, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = i.ElementColor
                        }):Play()
                        c = false
                    end
                end)if i.SchemeColor==Color3.fromRGB(255,255,255)then e:TweenObject(d, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)end;if i.SchemeColor==Color3.fromRGB(0,0,0)then e:TweenObject(d, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)end;coroutine.wrap(function()
                    while wait() do
                        if not c then
                            p.BackgroundColor3 = i.ElementColor
                        end
                        u.ImageColor3 = i.SchemeColor
                        s.BackgroundColor3 = i.ElementColor
                        v.TextColor3 = i.TextColor
                        d.BackgroundColor3 = Color3.fromRGB(i.SchemeColor.r * 255 - 14, i.SchemeColor.g * 255 - 17, i.SchemeColor.b * 255 - 13)
                        d.TextColor3 = i.TextColor
                        y.ImageColor3 = i.SchemeColor
                        C.BackgroundColor3 = i.ElementColor
                        K.ImageColor3 = i.SchemeColor
                        L.ImageColor3 = i.SchemeColor
                        N.TextColor3 = i.TextColor
                        O.ImageColor3 = i.SchemeColor
                    end
                end)()a()l()local a= game.Players.LocalPlayer;local b= a:GetMouse()local c= game:GetService('UserInputService')local d= game:GetService("RunService")local e=false;local f=false;local g=false;local g=E;local i=H;local l=G;local n=J;local o= {1,1,1}local p=false;local q;local r=0;local function s(a)return math.acos(math.cos(a*math.pi))/math.pi end;r=0;local function t()return a:GetMouse()end;local function a()if e then local a= t()local a,b= a.X-g.AbsolutePosition.X,a.Y-g.AbsolutePosition.Y;local c,d= g.AbsoluteSize.X,g.AbsoluteSize.Y;if a<0 then a=0 end;if a>c then a=c end;if b<0 then b=0 end;if b>d then b=d end;a=a/c;b=b/d;local c= l.AbsoluteSize.X/2;local d= l.AbsoluteSize.Y/2;l.Position= UDim2.new(a,-c,b,-d)o= {1-a,1-b,o[3]}local a= Color3.fromHSV(o[1],o[2],o[3])z.BackgroundColor3=a;h(a)end;if f then local a= t()local a= a.Y-i.AbsolutePosition.Y;local b= i.AbsoluteSize.Y;if a<0 then a=0 end;if a>b then a=b end;a=a/b;local b= n.AbsoluteSize.Y/2;n.Position= UDim2.new(0.5,0,a,-b)n.ImageColor3= Color3.fromHSV(0,0,a)o= {o[1],o[2],1-a}local a= Color3.fromHSV(o[1],o[2],o[3])z.BackgroundColor3=a;h(a)end end;local function t(a)local b= l.AbsoluteSize.X/2;local c= l.AbsoluteSize.Y/2;o= {a[1],a[2],a[3]}l.Position= UDim2.new(o[1],-b,o[2]-1,-c)n.Position= UDim2.new(0.5,0,o[3]-1,-c)local a= Color3.fromHSV(o[1],o[2],o[3])z.BackgroundColor3=a end;local function n(a)local b= l.AbsoluteSize.X/2;local c= l.AbsoluteSize.Y/2;o= {a[1],a[2],o[3]}l.Position= UDim2.new(o[1],-b,o[2]-1,-c)local a= Color3.fromHSV(o[1],o[2],o[3])z.BackgroundColor3=a;h(a)end;local function h()if p then game.TweenService:Create(L, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                            ImageTransparency = 1
                        }):Play()p=false;q:Disconnect()else game.TweenService:Create(L, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                            ImageTransparency = 0
                        }):Play()p=true;q= d.RenderStepped:Connect(function()
                            n({s(r),1,1})
                            r = r + 0.01
                        end)end end;M.MouseButton1Click:Connect(h)b.Move:connect(a)g.MouseButton1Down:connect(function()e=true end)i.MouseButton1Down:connect(function()f=true end)c.InputEnded:Connect(function(a)
                    if a.UserInputType.Name == 'MouseButton1' then
                        if f then f = false end
                        if e then e = false end
                    end
                end)t({j,k,m})end;function g:NewLabel(b)local c= {}local d= Instance.new("TextLabel")local g= Instance.new("UICorner")d.Name="label"d.Parent=r;d.BackgroundColor3= i.SchemeColor;d.BorderSizePixel=0;d.ClipsDescendants=true;d.Text=b;d.Size= UDim2.new(0, 352, 0, 33)d.Font= Enum.Font.Gotham;d.Text="  "..b;d.RichText=true;d.TextColor3= i.TextColor;f[d]="TextColor3"d.TextSize=14.000;d.TextXAlignment= Enum.TextXAlignment.Left;g.CornerRadius= UDim.new(0, 4)g.Parent=d;if i.SchemeColor==Color3.fromRGB(255,255,255)then e:TweenObject(d, {TextColor3 = Color3.fromRGB(0,0,0)}, 0.2)end;if i.SchemeColor==Color3.fromRGB(0,0,0)then e:TweenObject(d, {TextColor3 = Color3.fromRGB(255,255,255)}, 0.2)end;coroutine.wrap(function()
		            while wait() do
		                d.BackgroundColor3 = i.SchemeColor
		                d.TextColor3 = i.TextColor
		            end
		        end)()a()l()function c:UpdateLabel(a)if d.Text~="  "..a then d.Text="  "..a end end;return c end;return g end;return a end;return a end;return a