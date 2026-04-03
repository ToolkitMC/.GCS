# Delayed enderchest opening
# Called via schedule

# Applied to all players (last triggerer)
execute as @a[scores={gcs.exec=1..}] run function gcs:handlers/builtin/_do_open_ec
