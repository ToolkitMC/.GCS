function gcs:backup/create_backup
# WARNING: This function deletes all GCS data!

tellraw @s [{"text":"[!!!] ","color":"dark_red","bold":true},{"text":"RESETTING SYSTEM...","color":"red","bold":true}]

# Clear scoreboards
scoreboard objectives remove gcs.auth
scoreboard objectives remove gcs.hid
scoreboard objectives remove gcs.count
scoreboard objectives remove gcs.ui
scoreboard objectives remove gcs.exec
scoreboard objectives remove gcs.temp
scoreboard objectives remove gcs.perf
scoreboard objectives remove gcs.aura.timer
scoreboard objectives remove gcs.aura

# Clear storage
data remove storage gcs:db metadata
data remove storage gcs:db handlers
data remove storage gcs:db toggle_states
data remove storage gcs:temp metadata

tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green"},{"text":"System reset successfully!","color":"white"}]
tellraw @s [{"text":"[i] ","color":"gold"},{"text":"To restart, use ","color":"gray"},{"text":"/reload","color":"green","click_event":{"action":"suggest_command","command":"/reload"}},{"text":".","color":"gray"}]
tellraw @s ""

# Play sound
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 0 1
