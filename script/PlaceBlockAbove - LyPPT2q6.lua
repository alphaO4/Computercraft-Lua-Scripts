-- Loop to place blocks until the turtle hits the ground
while not turtle.detectDown() do
  -- Place a block above the turtle
  if turtle.getItemCount(1) > 0 then
    turtle.select(1)
    turtle.placeUp()
  else
    print("No blocks to place!")
    return
  end

  -- Move down one block
  turtle.down()
end

-- Print message when the turtle hits the ground
print("Turtle has hit the ground!")
