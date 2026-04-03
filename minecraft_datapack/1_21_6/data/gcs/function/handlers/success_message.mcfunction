# Handler executed successfully
$tellraw @s [{"text":"[OK] ","color":"green","bold":true},{"text":"$(label)","color":"yellow"},{"text":" executed!","color":"green"}]

# Visual + sound effects
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.1 15 force
particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 8 force
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.3 1.5

# AME integration: log + event fire (only if AME loaded)
execute unless data storage macro:engine {global:{loaded:1b}} run return 0
$data modify storage macro:input message set value "GCS handler executed: $(name)"
function macro:log/info with storage macro:input
data remove storage macro:input message
function macro:event/fire {event:"gcs.handler_executed"}
