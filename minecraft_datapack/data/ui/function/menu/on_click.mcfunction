function ui:menu/run_command with storage ui in[0].components."minecraft:custom_data".ui_item.process

function ui:menu/exit with storage ui in[0].components."minecraft:custom_data".ui_item.process

execute if score .type ui matches 1 run function ui:minecart/load_page

playsound minecraft:ui.button.click master @s ~ ~ ~ 4 2