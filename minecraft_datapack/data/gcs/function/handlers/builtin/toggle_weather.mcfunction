# ═══════════════════════════════════════════════════
# WEATHER TOGGLE HANDLER (Clear → Rain → Thunder)
# FULL WORKING VERSION
# ═══════════════════════════════════════════════════

# ───────────────────────────────────────────────────
# STATE++  (0 → 1 → 2 → 0)
# ───────────────────────────────────────────────────
scoreboard players add #weather_state gcs.temp 1
execute if score #weather_state gcs.temp matches 3.. run scoreboard players set #weather_state gcs.temp 0

# ───────────────────────────────────────────────────
# CLEAR (0)
# ───────────────────────────────────────────────────
execute if score #weather_state gcs.temp matches 0 run weather clear 600
execute if score #weather_state gcs.temp matches 0 run tellraw @s [{"text":"[☀] ","color":"yellow","bold":true},{"text":"Hava açıldı!","color":"gold"}]
execute if score #weather_state gcs.temp matches 0 run particle minecraft:glow ~ ~2 ~ 2 1 2 0.1 100 force
execute if score #weather_state gcs.temp matches 0 run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.5

# ───────────────────────────────────────────────────
# RAIN (1)
# ───────────────────────────────────────────────────
execute if score #weather_state gcs.temp matches 1 run weather rain 600
execute if score #weather_state gcs.temp matches 1 run tellraw @s [{"text":"[🌧] ","color":"aqua","bold":true},{"text":"Yağmur başladı!","color":"blue"}]
execute if score #weather_state gcs.temp matches 1 run particle minecraft:rain ~ ~2 ~ 2 1 2 0 100 force
execute if score #weather_state gcs.temp matches 1 run playsound minecraft:weather.rain master @s ~ ~ ~ 0.5 1

# ───────────────────────────────────────────────────
# THUNDER (2)
# ───────────────────────────────────────────────────
execute if score #weather_state gcs.temp matches 2 run weather thunder 600
execute if score #weather_state gcs.temp matches 2 run tellraw @s [{"text":"[⚡] ","color":"dark_purple","bold":true},{"text":"Fırtına başladı!","color":"light_purple"}]
execute if score #weather_state gcs.temp matches 2 run particle minecraft:electric_spark ~ ~2 ~ 2 1 2 0.5 50 force
execute if score #weather_state gcs.temp matches 2 run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.3 1.2