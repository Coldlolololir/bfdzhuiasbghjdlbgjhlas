getgenv().collectOrbsToggle = false
getgenv().collectHoopsToggle = false
getgenv().autoRebirth = false

local remotePath = game:GetService("ReplicatedStorage").rEvents

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("legends of speed") 

local b = w:CreateFolder("Farming") 

b:DestroyGui()

b:Toggle("Collect Orbs",function(bool)
    getgenv().collectOrbsToggle = bool
    print('Collect Orbs is: ', bool)
    if bool then
        collectOrbs()
    end
end)

b:Toggle("Collect Hoops",function(bool)
    getgenv().collectHoopsToggle = bool
    print('Collect Hoops is: ', bool)
    if bool then
        collectHoops()
    end
end)

b:Toggle("Rebirth",function(bool)
    getgenv().autoRebirth = bool
    if bool then
        rebirth()
    end
end)

function collectOrbs()
spawn(function()
    while collectOrbsToggle == true do 
            local args = {[1] = "collectOrb",[2] = "Orange Orb",[3] = "City"}
            remotePath.orbEvent:FireServer(unpack(args))
            wait()
         end
    end)
end

function collectOrbs()
    spawn(function()
        while collectOrbsToggle == true do 
             local args = {[1] = "collectOrb",[2] = "Gem",[3] = "City"}
             remotePath.orbEvent:FireServer(unpack(args))
            wait()
        end
    end)
end

function collectOrbs()
    spawn(function()
        while collectOrbsToggle == true do 
            local args = {[1] = "collectOrb",[2] = "Red Orb",[3] = "City"}
             remotePath.orbEvent:FireServer(unpack(args))
            wait()
        end
    end)
end

function collectOrbs()
    spawn(function()
        while collectOrbsToggle == true do 
            local args = {[1] = "collectOrb",[2] = "Yellow Orb",[3] = "City"}
             remotePath.orbEvent:FireServer(unpack(args))
            wait()
        end
    end)
end


function collectOrbs()
    spawn(function()
        while collectOrbsToggle == true do 
            local args = {[1] = "collectOrb",[2] = "Blue Orb",[3] = "City"}
            remotePath.orbEvent:FireServer(unpack(args))
            wait()
        end
    end)
end

function collectHoops()
    spawn(function()
        --local playerHead = game.Players.LocalPlayer.Character.Head -- Players Head
        local playerPP= game.Players.LocalPlayer.Character.PrimaryPart-- Try using primary part instead?
            while wait() do
                if not getgenv().collectHoopsToggle then break end
                for i, v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                     -- we will fire the touch event 
                    firetouchinterest(playerPP, v.Parent, 0)
                     task.wait(0.25); -- wait just slightly before untouching, you can try removing this
                    firetouchinterest(playerPP, v.Parent, 1)  --you need to untouch after touching
                end
            end
        end
    end)
end

function rebirth()
    spawn(function()
        while wait(0.25) do
            if not autoRebirth then break end
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
        end
    end)
end
