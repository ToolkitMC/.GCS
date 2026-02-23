# Trigger'ları etkinleştir
scoreboard players enable @a[scores={gcs.auth=1..}] gcs.ui
scoreboard players enable @a[scores={gcs.auth=1..}] gcs.exec
scoreboard players enable @a[scores={gcs.auth=1..}] gcs.run

# UI tetiklendiğinde → yönetim paneli
execute as @a[scores={gcs.ui=1..}] run function gcs:admin/main_menu
scoreboard players set @a[scores={gcs.ui=1..}] gcs.ui 0

# Run tetiklendiğinde → çalıştırma menüsü
execute as @a[scores={gcs.run=1..}] run function gcs:exec/menu
scoreboard players set @a[scores={gcs.run=1..}] gcs.run 0

# Execute tetiklendiğinde → handler çalıştır
execute as @a[scores={gcs.exec=1..}] run function gcs:handlers/router
scoreboard players reset @a[scores={gcs.exec=1..}] gcs.exec

# Partikül Aura efekti
execute as @a[scores={gcs.aura=1}] at @s run function gcs:effects/particle_aura_tick
