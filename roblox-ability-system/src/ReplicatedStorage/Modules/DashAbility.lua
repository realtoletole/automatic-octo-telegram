
--!strict
local Ability = require(script.Parent.Ability)

local Dash = {}
Dash.__index = Dash
setmetatable(Dash, Ability)

function Dash.new()
    local self = Ability.new("Dash", 3) :: any
    return setmetatable(self, Dash)
end

function Dash:Activate(player: Player)
    if not self:CanUse() then return end
    self.LastUsed = tick()

    local char = player.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if hrp then
        hrp.Velocity = hrp.CFrame.LookVector * 100
    end
end

return Dash
