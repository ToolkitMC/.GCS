# Clear Weather Handler
# Immediately clears weather + sun effects

# Clear weather (1 hour = 72000 ticks)
weather clear 72000

# Mesaj
tellraw @s [{"text":"[☀] ","color":"yellow","bold":true},{"text":"Weather CLEAR! ","color":"gold","bold":true},{"text":"(1 hour)","color":"green"}]

# Sunlight effects
particle minecraft:glow ~ ~2 ~ 3 2 3 0.1 200 force
particle minecraft:end_rod ~ ~3 ~ 2 1 2 0.2 100 force
particle minecraft:end_rod ~ ~1.5 ~ 1 1 1 0.3 50 force
particle minecraft:glow_squid_ink ~ ~2 ~ 0.5 0.5 0.5 0 5 force

# Ses efektleri
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1.0 1.5
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 2.0
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.8

# Actionbar for all players
title @a actionbar [{"text":"☀ ","color":"yellow"},{"text":"Weather Cleared","color":"gold","bold":true},{"text":" ☀","color":"yellow"}]

# Glow effect (brief)
effect give @s glowing 3 0 true
