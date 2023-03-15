-- Set the block name to check for
local block_name = "minecraft:cobbled_deepslate"

-- Loop to break Cobble Deepslate blocks above until it hits a non-Cobble Deepslate block
while turtle.detectUp() do
  local success, block = turtle.inspectUp()
  if success and block.name == block_name then
    turtle.digUp()
  else
    break
  end
  turtle.up()
end
