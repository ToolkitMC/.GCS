# Kendi üstüne freeze toggle (tag bazlı)
# Tag var → dondurulmuş, tag yok → serbest

execute if entity @s[tag=gcs_frozen] run function gcs:handlers/builtin_extra/_freeze_off
execute unless entity @s[tag=gcs_frozen] run function gcs:handlers/builtin_extra/_freeze_on
