local Roact = require(game.ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Roact"))
local inventory = require(script.Parent.Components.inventory)
local Screen = script.Parent.Parent.ScreenGui





    local inv = Roact.createElement(inventory, {
        isVisible = true
    })

    local handle = Roact.mount(inv, game.Players.LocalPlayer.PlayerGui.ScreenGui)

local function toggleVisibility()
    inv.props.isVisible = not inv.props.isVisible  -- Toggle isVisible property
    Roact.update(handle, inv)  -- Update the mounted component
end

-- Connect the function to the KeyPressed event
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.I  then
        toggleVisibility()  -- Call the toggleVisibility function
    end
end)
