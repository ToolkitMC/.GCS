function #gcs:maintenance_off

tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"MAINTENANCE MODE OFF","color":"green","bold":true}]
tellraw @s ""
tellraw @s [{"text":"[!] ","color":"gold"},{"text":"System running normally.","color":"white"}]
tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Handlers are ready.","color":"white"}]
tellraw @s ""

# Notify all players
tellraw @a[scores={gcs.auth=1..}] [{"text":"[GCS] ","color":"gold","bold":true},{"text":"System returned to normal mode!","color":"green"}]
