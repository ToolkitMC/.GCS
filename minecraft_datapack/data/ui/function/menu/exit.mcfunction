# Close to GUI
$data modify storage ui exit set value $(exit)b

execute if data storage ui {exit:1b} run function ui:player/close
execute if data storage ui {exit:0b} run function ui:player/empty

data remove storage ui exit