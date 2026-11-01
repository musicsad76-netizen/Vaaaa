local RS = game:GetService("ReplicatedStorage")
local Event = RS.Remotes.Missiles.PurchaseMissile

while task.wait(2) do
    local Success, Result = pcall(function()
        return Event:InvokeServer("Leviathan", 10)
    end)

    if Success then
        print("Result:", Result)
    else
        warn(Result)
        break
    end
end
local Event = game:GetService("ReplicatedStorage").Remotes.Missiles.PlaceMissile

local Positions = {
    {48, 73, 0},
    {47, 73, 0},
    {46, 73, 0},
    {45, 73, 0},
    {44, 73, 0},
    {43, 73, 0},
    {42, 73, 0},
    {41, 73, 0},
    {40, 73, 0},
    {39, 73, 0},
    {38, 73, 0},
    {37, 73, 0},
    {36, 73, 0},
    {35, 73, 0},
    {34, 73, 0},
    {33, 73, 0},
    {32, 73, 0},
    {31, 73, 0},
    {30, 73, 0},
    {29, 73, 0}
}

while true do
    for _, pos in ipairs(Positions) do
        Event:InvokeServer("Leviathan", pos[1], pos[2], pos[3])
        task.wait(0.01)
    end
end
local Event = game:GetService("ReplicatedStorage").Remotes.Missiles.PlaceMissile

local Positions = {
    {47, 149, 0},
    {51, 149, 0},
    {55, 149, 0},
    {59, 149, 0},
    {63, 149, 0},
    {67, 149, 0},
    {71, 149, 0},
    {75, 149, 0},
    {79, 149, 0},
    {83, 149, 0}
}

local Delay = 0.01
local Running = true

while Running do
    for _, Pos in ipairs(Positions) do
        local Success, Result = pcall(function()
            return Event:InvokeServer(
                "Marauder",
                Pos[1],
                Pos[2],
                Pos[3]
            )
        end)

        task.wait(Delay)
    end
end