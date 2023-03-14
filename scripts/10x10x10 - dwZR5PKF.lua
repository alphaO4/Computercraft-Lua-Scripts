-- Move the turtle forward into the quarrying zone
turtle.dig()
turtle.forward()

-- Loop over the 10 x 10 x 10 area
for x = 1, 10 do
    -- Loop over the columns
    for z = 1, 10 do
        -- Loop over the height
        for y = 1, 10 do
            turtle.digUp()
            turtle.up()
        end
        
        -- Move the turtle down to the bottom of the column
        for i = 1, 10 do
            turtle.digDown()
            turtle.down()
        end
        
        -- Move the turtle forward to the next column
        turtle.dig()
        turtle.forward()
    end
    
    -- Turn the turtle at the end of the row
    if (x % 2 == 0) then
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()
    else
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
    end
end
