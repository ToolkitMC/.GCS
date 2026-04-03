# Retrieve command from storage and execute safely

# Log before command execution
execute if score @s gcs.auth matches 3 run tellraw @s [{"text":"[DEBUG] ","color":"dark_gray"},{"text":"Executing command...","color":"gray"}]

# Commandu execute
$$(command)

# Success log
execute if score @s gcs.auth matches 3 run tellraw @s [{"text":"[DEBUG] ","color":"dark_gray"},{"text":"Command completed successfully","color":"green"}]
