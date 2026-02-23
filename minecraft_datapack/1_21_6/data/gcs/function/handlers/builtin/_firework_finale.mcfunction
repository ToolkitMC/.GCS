# Firework Show - Grand Finale
# En büyük patlama!

# Tüm oyuncular için mega patlama
execute as @a at @s run particle minecraft:firework ~ ~8 ~ 5 3 5 0.5 300 force
execute as @a at @s run particle minecraft:flash ~ ~8 ~ 0 0 0 0 8 force
execute as @a at @s run particle minecraft:sonic_boom ~ ~7 ~ 0 0 0 0 2 force
execute as @a at @s run particle minecraft:explosion_emitter ~ ~7 ~ 2 1 2 0 3 force

# Epic sesler
execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 3.0 0.8
execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 3.0 1.2
execute as @a at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.5 2.0
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.3 2.0

# Final mesaj
execute as @a run tellraw @s [{"text":"🎆 ","color":"gold"},{"text":"FİNALE!","color":"light_purple","bold":true},{"text":" 🎇","color":"yellow"}]
