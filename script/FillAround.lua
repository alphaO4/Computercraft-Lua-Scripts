-- Set the block name to place
local block_name = "minecraft:cobblestone"

-- Loop to check all sides and above
while true do
  -- Check if there is a block above the turtle
  if turtle.detectUp() then
    turtle.down()
  else
    -- Check all sides for blocks
    for i = 1, 4 do
      turtle.turnRight()

      if not turtle.detect() then
        turtle.place()
      end
    end

    -- Check above for blocks
    if not turtle.detectUp() then
      turtle.placeUp()
    end

    -- Move down one block
    turtle.down()
  end
end
