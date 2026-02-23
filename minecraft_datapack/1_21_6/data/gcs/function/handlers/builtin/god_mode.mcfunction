# God Mode Toggle Handler
# Tam koruma paketi (Resistance V, Regeneration, Absorption)

# God mode durumunu kontrol et (Resistance V varlığıyla)
execute store result score #has_godmode gcs.temp run data get entity @s active_effects[{id:"minecraft:resistance",amplifier:4}]

# God mode yoksa aktif et
execute unless score #has_godmode gcs.temp matches 1.. run effect give @s resistance 999999 4 true
execute unless score #has_godmode gcs.temp matches 1.. run effect give @s regeneration 999999 2 true
execute unless score #has_godmode gcs.temp matches 1.. run effect give @s fire_resistance 999999 0 true
execute unless score #has_godmode gcs.temp matches 1.. run effect give @s absorption 999999 4 true
execute unless score #has_godmode gcs.temp matches 1.. run tellraw @s [{"text":"[🛡] ","color":"gold","bold":true},{"text":"TANRİ MODU ","color":"yellow","bold":true},{"text":"AKTİF","color":"green","bold":true}]
execute unless score #has_godmode gcs.temp matches 1.. run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.3 100 force
execute unless score #has_godmode gcs.temp matches 1.. run particle minecraft:enchanted_hit ~ ~1 ~ 1 1 1 0.5 50 force
execute unless score #has_godmode gcs.temp matches 1.. run particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0.2 30 force
execute unless score #has_godmode gcs.temp matches 1.. run playsound minecraft:item.totem.use master @s ~ ~ ~ 1.0 1.0
execute unless score #has_godmode gcs.temp matches 1.. run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.7 0.5
execute unless score #has_godmode gcs.temp matches 1.. run title @s actionbar [{"text":"⚡ ","color":"gold"},{"text":"ÖLÜMSÜZSÜN","color":"yellow","bold":true},{"text":" ⚡","color":"gold"}]

# God mode varsa kapat
execute if score #has_godmode gcs.temp matches 1.. run effect clear @s resistance
execute if score #has_godmode gcs.temp matches 1.. run effect clear @s regeneration  
execute if score #has_godmode gcs.temp matches 1.. run effect clear @s fire_resistance
execute if score #has_godmode gcs.temp matches 1.. run effect clear @s absorption
execute if score #has_godmode gcs.temp matches 1.. run tellraw @s [{"text":"[🛡] ","color":"dark_gray","bold":true},{"text":"Tanrı modu ","color":"gray"},{"text":"devre dışı","color":"red"}]
execute if score #has_godmode gcs.temp matches 1.. run particle minecraft:squid_ink ~ ~1 ~ 0.5 1 0.5 0.1 50 force
execute if score #has_godmode gcs.temp matches 1.. run playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 0.5 0.8
execute if score #has_godmode gcs.temp matches 1.. run title @s actionbar [{"text":"⚠ ","color":"red"},{"text":"Savunmasızsın","color":"dark_red"},{"text":" ⚠","color":"red"}]
