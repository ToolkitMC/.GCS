# GCS cooldown/set — AME macro:cooldown/set'e devreder
# Call: function gcs:cooldown/set {hid:X, ticks:Y}
# AME key: "gcs_handler_<hid>"
# AME player: @s name (macro:player/get_name ile alınır)
execute unless data storage macro:engine {global:{loaded:1b}} run return fail

# Player adını al
function macro:player/get_name
# AME get_name -> macro:names temp.NAME'e yazar

# cooldown/set çağrısı: macro:cooldown/set {player:"NAME", key:"gcs_handler_X", duration:Y}
$data modify storage macro:input key set value "gcs_handler_$(hid)"
$data modify storage macro:input duration set value $(ticks)
data modify storage macro:input player set from storage macro:names temp.NAME
function macro:cooldown/set with storage macro:input
data remove storage macro:input key
data remove storage macro:input duration
data remove storage macro:input player
