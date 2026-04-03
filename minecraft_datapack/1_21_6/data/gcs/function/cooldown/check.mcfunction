# GCS cooldown/check — AME macro:cooldown/check'e devreder
# Call: function gcs:cooldown/check {hid:X}
# Return: #cd_ok gcs.count 1=pass 0=blocked
scoreboard players set #cd_ok gcs.count 1

execute unless data storage macro:engine {global:{loaded:1b}} run return 0

function macro:player/get_name
$data modify storage macro:input key set value "gcs_handler_$(hid)"
data modify storage macro:input player set from storage macro:names temp.NAME
function macro:cooldown/check with storage macro:input
data remove storage macro:input key
data remove storage macro:input player

# macro:cooldown/check -> macro:output result: 0b=active(blocked), 1b=passed
execute if data storage macro:output {result:0b} run scoreboard players set #cd_ok gcs.count 0
execute if data storage macro:output {result:0b} run function gcs:cooldown/_blocked
