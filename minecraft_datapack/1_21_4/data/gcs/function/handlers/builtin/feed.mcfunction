# Advanced Feed Handler
# Fully restores hunger and saturation + bonus effects

# Restore hunger
effect give @s saturation 1 255 true
effect give @s instant_health 1 0 true

# Bonus efektler (30 sn)
effect give @s regeneration 30 1
effect give @s absorption 60 1

# Mesaj ve efektler
tellraw @s [{"text":"[🍖] ","color":"gold","bold":true},{"text":"Full saturation! ","color":"yellow"},{"text":"Your health has been restored.","color":"green"}]

# Particle effects
particle minecraft:heart ~ ~2 ~ 0.5 0.5 0.5 0.1 10 force
particle minecraft:happy_villager ~ ~1 ~ 0.5 1 0.5 0 20 force
particle minecraft:glow ~ ~0.5 ~ 0.3 0.5 0.3 0.1 15 force

# Ses efektleri
playsound minecraft:entity.player.burp master @s ~ ~ ~ 1.0 1.0
playsound minecraft:entity.generic.eat master @s ~ ~ ~ 0.8 1.0
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5

# Action bar bildirimi
title @s actionbar [{"text":"💚 ","color":"green"},{"text":"Health and Saturation Restored","color":"gold"},{"text":" 💚","color":"green"}]
