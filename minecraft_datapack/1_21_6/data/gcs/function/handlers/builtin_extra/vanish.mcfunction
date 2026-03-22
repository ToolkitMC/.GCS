# VANISH TOGGLE — tag tabanlı, spectator/invisibility
execute if entity @s[tag=gcs_vanished] run function gcs:handlers/builtin_extra/_vanish_off
execute unless entity @s[tag=gcs_vanished] run function gcs:handlers/builtin_extra/_vanish_on
