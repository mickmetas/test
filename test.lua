local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "Title of the library", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "OrionTest"
})

-- สร้าง Tab สำหรับ Player
local PlayerTab = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- สร้าง Tab สำหรับ Movement
local MovementTab = Window:MakeTab({
    Name = "Movement",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- เพิ่มปุ่ม WalkSpeed ใน Tab Movement
MovementTab:AddButton({
    Name = "WalkSpeed",
    Callback = function()
        local player = game.Players.LocalPlayer
        local chara = player.Character
        if chara and chara:FindFirstChild("Humanoid") then
            chara.Humanoid.WalkSpeed = 2000
        end
    end
})
