local Roact = require(game.ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Roact"))

local InventoryMenu = Roact.Component:extend("InventoryMenu")

function InventoryMenu:init(props)
    -- Initialize component state or properties
    self.state = {
        -- Initialize state variables here
        isVisible = props.isVisible or false, -- Example state variable
    }
end

function InventoryMenu:render()
    return Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundColor3 = Color3.fromRGB(124, 110, 95),
        BackgroundTransparency = .4,
        Position = UDim2.new(0, 0, 0, 0),
        Visible = self.state.isVisible,
    },  {
        -- Children of the Frame
        WeaponFrame = Roact.createElement("Frame", {
            Size = UDim2.new(0.22867737948,0,.18981481481,0),
            Position = UDim2.new(.6650185414,0,0.64814814814,0),
            BackgroundTransparency = 1
        },
        {
            -- Create First Weapon Selection ImageButton When it's hovered over it gets a white border around it

            -- Create Second Weapon Item Selection ImageButton
        }
        )
    })
end

return InventoryMenu