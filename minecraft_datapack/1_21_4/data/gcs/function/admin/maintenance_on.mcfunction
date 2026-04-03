function #gcs:maintenance_on

tellraw @s ""
tellraw @s [{"text":"[🔧] ","color":"gold","bold":true},{"text":"MAINTENANCE MODE ACTIVE","color":"red","bold":true}]
tellraw @s ""
tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Sistem in maintenance mode.","color":"yellow"}]
tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Handlers are currently unavailable.","color":"yellow"}]
tellraw @s ""

# Notify all players
tellraw @a[scores={gcs.auth=1..}] [{"text":"[GCS] ","color":"gold","bold":true},{"text":"System entered maintenance mode!","color":"red"}]
