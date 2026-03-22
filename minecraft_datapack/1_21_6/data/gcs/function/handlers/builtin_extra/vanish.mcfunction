# Vanish toggle — görünmezlik modu
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run function gcs:handlers/builtin_extra/_vanish_off
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run function gcs:handlers/builtin_extra/_vanish_on
