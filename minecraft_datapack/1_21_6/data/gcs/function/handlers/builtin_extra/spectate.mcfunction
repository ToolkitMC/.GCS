# Watch target — switch to spectator mode on a player
# Usage: function gcs:handlers/builtin_extra/spectate {target:"OyuncuAdi"}
$spectate $(target)
$tellraw @s [{"text":"[👁] ","color":"aqua"},{"text":"Watching: ","color":"gray"},{"text":"$(target)","color":"yellow"}]
