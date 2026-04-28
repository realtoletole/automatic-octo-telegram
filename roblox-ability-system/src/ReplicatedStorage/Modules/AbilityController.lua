
--!strict
local Controller = {}
Controller.__index = Controller

function Controller.new()
    return setmetatable({Abilities = {}}, Controller)
end

function Controller:Add(ability)
    table.insert(self.Abilities, ability)
end

function Controller:Activate(name: string, player: Player)
    for _, a in self.Abilities do
        if a.Name == name then
            a:Activate(player)
        end
    end
end

return Controller
