
--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Controller = require(ReplicatedStorage.Modules.AbilityController)
local Dash = require(ReplicatedStorage.Modules.DashAbility)

local remote = Instance.new("RemoteEvent")
remote.Name = "AbilityRemote"
remote.Parent = ReplicatedStorage

local controller = Controller.new()
controller:Add(Dash.new())

remote.OnServerEvent:Connect(function(player, name)
    controller:Activate(name, player)
end)
