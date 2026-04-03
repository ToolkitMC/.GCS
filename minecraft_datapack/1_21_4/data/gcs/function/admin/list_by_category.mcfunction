# This function lists handlers for each category
# Works recursively — shows details for each handler

# NOT: Bu simplified versiyondur
# In a real implementation, dynamic listing via data get is possible

$tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Category: ","color":"gray"},{"text":"$(category)","color":"white"}]
tellraw @s [{"text":"    ","color":"dark_gray"},{"text":"Handler'lar bu kategoride listnir","color":"gray","italic":true}]
