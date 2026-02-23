# Teleport Home Handler
# Oyuncuyu spawn noktasına ışınlar

execute at @s run particle minecraft:portal ~ ~1 ~ 0.3 0.5 0.3 0.1 50
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1

# Spawn'a ışınla
execute in minecraft:overworld run tp @s 0 64 0

execute at @s run particle minecraft:portal ~ ~1 ~ 0.3 0.5 0.3 0.1 50
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
