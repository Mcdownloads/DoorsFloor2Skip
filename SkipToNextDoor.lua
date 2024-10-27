function skipToNextDoor(player, currentDoor)
    -- Assuming "Floor2Doors" is the folder containing all doors for Floor 2 in "The Mines"
    local doors = workspace.Floor2Doors:GetChildren() 
    local targetDoorNumber = currentDoor + 1
    
    -- Ensure the target door is within the range 101 to 200
    if targetDoorNumber >= 101 and targetDoorNumber <= 200 then
        for _, door in ipairs(doors) do
            if tonumber(door.Name) == targetDoorNumber then
                player.Character.HumanoidRootPart.CFrame = door.CFrame
                print("Player " .. player.Name .. " skipped to door " .. targetDoorNumber)
                return
            end
        end
    else
        print("No more doors to skip!")
    end
end
