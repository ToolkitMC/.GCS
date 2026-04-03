# Set Day Handler
# Sets time to daytime (noon)

# Set time to noon (6000 ticks)
time set 6000

# Mesaj
tellraw @s [{"text":"[🌅] ","color":"gold","bold":true},{"text":"Time: ","color":"yellow"},{"text":"NOON","color":"white","bold":true}]

# Daylight effects
particle minecraft:glow ~ ~2 ~ 2 1 2 0.1 100 force
particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.1 50 force
particle minecraft:scrape ~ ~0.5 ~ 1 0.5 1 0 30 force

# Ses
playsound minecraft:block.bell.use master @s ~ ~ ~ 1.0 1.5
playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 0.7 1.2

# Title
title @s times 10 40 10
title @s title [{"text":"🌞","color":"gold"}]
title @s subtitle [{"text":"Good morning!","color":"yellow"}]
