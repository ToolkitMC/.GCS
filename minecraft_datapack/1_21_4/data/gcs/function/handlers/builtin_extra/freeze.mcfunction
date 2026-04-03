# Freeze a target player (toggle)
# Call: function gcs:handlers/builtin_extra/freeze {target:"PlayerName"}
execute unless data storage gcs:db freeze_states run data modify storage gcs:db freeze_states set value []

$execute unless data storage gcs:db freeze_states[{target:"$(target)"}] run data modify storage gcs:db freeze_states append value {target:"$(target)",frozen:0b}

$execute store result score #fz_state gcs.count run data get storage gcs:db freeze_states[{target:"$(target)"}].frozen 1

# OFF -> ON (freeze)
# slowness 255 kills horizontal movement; levitation 0 prevents jumping without client-side physics overflow
$execute if score #fz_state gcs.count matches 0 as $(target) run effect give @s minecraft:slowness 999999 255 true
$execute if score #fz_state gcs.count matches 0 as $(target) run effect give @s minecraft:levitation 999999 0 true
$execute if score #fz_state gcs.count matches 0 run data modify storage gcs:db freeze_states[{target:"$(target)"}].frozen set value 1b
$execute if score #fz_state gcs.count matches 0 run tellraw @a[tag=gcs_admin] [{"text":"[Freeze] ","color":"aqua","bold":true},{"text":"$(target)","color":"yellow"},{"text":" frozen.","color":"red"}]
$execute if score #fz_state gcs.count matches 0 as $(target) run tellraw @s [{"text":"[Freeze] ","color":"aqua","bold":true},{"text":"You have been frozen by an admin.","color":"red"}]

# ON -> OFF (unfreeze)
$execute if score #fz_state gcs.count matches 1 as $(target) run effect clear @s minecraft:slowness
$execute if score #fz_state gcs.count matches 1 as $(target) run effect clear @s minecraft:levitation
$execute if score #fz_state gcs.count matches 1 run data modify storage gcs:db freeze_states[{target:"$(target)"}].frozen set value 0b
$execute if score #fz_state gcs.count matches 1 run tellraw @a[tag=gcs_admin] [{"text":"[Freeze] ","color":"aqua","bold":true},{"text":"$(target)","color":"yellow"},{"text":" unfrozen.","color":"green"}]
$execute if score #fz_state gcs.count matches 1 as $(target) run tellraw @s [{"text":"[Freeze] ","color":"green","bold":true},{"text":"You have been unfrozen.","color":"white"}]
