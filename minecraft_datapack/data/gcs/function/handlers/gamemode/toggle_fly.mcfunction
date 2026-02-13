# Toggle fly mode
execute if entity @s[gamemode=survival] run gamemode creative @s
execute if entity @s[gamemode=creative] run gamemode survival @s
execute if entity @s[gamemode=adventure] run gamemode creative @s
tellraw @s {"text":"Gamemode toggled!","color":"green"}
