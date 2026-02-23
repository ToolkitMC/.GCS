# ═══════════════════════════════════════════════════
# ADVANCED FLY TOGGLE (NO PLAYER SCORE STORAGE)
# gcs.temp kullanır, scoreboard.dat şişirmez
# ═══════════════════════════════════════════════════

# Mevcut mayfly değerini temp'e al (0 / 1)
execute store result score #fly gcs.temp run data get entity @s abilities.mayfly 1

# ───────────────────────────────────────────────────
# FLY OFF → ON
# ───────────────────────────────────────────────────
execute if score #fly gcs.temp matches 0 run gamemode creative @s
execute if score #fly gcs.temp matches 0 run tellraw @s [{"text":"[🪶] ","color":"light_purple","bold":true},{"text":"Uçuş Modu ","color":"aqua","bold":true},{"text":"AKTİF","color":"green","bold":true}]
execute if score #fly gcs.temp matches 0 at @s run particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0.2 50 force
execute if score #fly gcs.temp matches 0 at @s run particle minecraft:end_rod ~ ~1.5 ~ 0.3 0.8 0.3 0.1 30 force
execute if score #fly gcs.temp matches 0 run playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 0.5 1.5
execute if score #fly gcs.temp matches 0 run effect give @s slow_falling 10 0 true

# ───────────────────────────────────────────────────
# FLY ON → OFF
# ───────────────────────────────────────────────────
execute if score #fly gcs.temp matches 1 run gamemode survival @s
execute if score #fly gcs.temp matches 1 run tellraw @s [{"text":"[🪶] ","color":"gray","bold":true},{"text":"Uçuş Modu ","color":"dark_gray"},{"text":"KAPALI","color":"red","bold":true}]
execute if score #fly gcs.temp matches 1 at @s run particle minecraft:cloud ~ ~0.5 ~ 0.5 0.5 0.5 0.05 30 force
execute if score #fly gcs.temp matches 1 run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.5 0.8
execute if score #fly gcs.temp matches 1 run effect clear @s slow_falling

# Temizlik
scoreboard players reset #fly gcs.temp