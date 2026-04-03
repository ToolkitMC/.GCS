# Show search result (all handlers shown, user filters manually)
# More advanced string matching can be added in the future

scoreboard players add #found gcs.count 1

# Store hid in scoreboard (for use in tellraw)
$scoreboard players set #display_hid gcs.temp $(hid)

# Handler bilgilerini show
$tellraw @s [{"text":"┌─ ","color":"dark_gray"},{"text":"#$(hid)","color":"aqua","bold":true},{"text":" │ ","color":"dark_gray"},{"text":"$(label)","color":"white","bold":true}]
$tellraw @s [{"text":"│  ","color":"dark_gray"},{"text":"Name: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
$tellraw @s [{"text":"│  ","color":"dark_gray"},{"text":"Description: ","color":"gray"},{"text":"$(description)","color":"white"}]
$tellraw @s [{"text":"│  ","color":"dark_gray"},{"text":"Category: ","color":"gray"},{"text":"$(category)","color":"gold"},{"text":" │ Auth Level: ","color":"gray"},{"text":"$(auth_level)","color":"aqua"}]

# Status
execute if score #enabled gcs.temp matches 1 run tellraw @s [{"text":"│  ","color":"dark_gray"},{"text":"Status: ","color":"gray"},{"text":"● Active","color":"green"}]
execute unless score #enabled gcs.temp matches 1 run tellraw @s [{"text":"│  ","color":"dark_gray"},{"text":"Status: ","color":"gray"},{"text":"○ Inactive","color":"red"}]

# Action buttons — use hid from scoreboard
function gcs:admin/_search_show_buttons with storage gcs:temp current_handler
tellraw @s ""
