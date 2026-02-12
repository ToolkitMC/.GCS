# Bulk enable/disable handlers
# Start scorebord:
scoreboard players set @s[scores={gcs.toggle=0}] gcs.toggle 1
scoreboard players set @s[scores={gcs.toggle=1}] gcs.toggle 0

#
execute if score @s gcs.toggle matches 0 run data modify storage gcs:db handlers[].enabled set value 1b
execute if score @s gcs.toggle matches 1 run data modify storage gcs:db handlers[].enabled set value 0b

tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Toplu işlem tamamlandı!","color":"green"}]
$tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"İşlem: ","color":"gray"},{"text":"$(action)","color":"yellow"}]
tellraw @s ""
