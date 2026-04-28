
--!strict
local Ability = {}
Ability.__index = Ability

export type Ability = {
    Name: string,
    Cooldown: number,
    LastUsed: number,
    Activate: (self: Ability, player: Player) -> (),
    CanUse: (self: Ability) -> boolean,
}

function Ability.new(name: string, cooldown: number)
    local self = setmetatable({}, Ability)
    self.Name = name
    self.Cooldown = cooldown
    self.LastUsed = 0
    return self
end

function Ability:CanUse(): boolean
    return tick() - self.LastUsed >= self.Cooldown
end

function Ability:Activate(player: Player)
    warn("Not implemented")
end

return Ability
