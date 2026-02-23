# Firework Show - İkinci Patlama
# Schedule ile çağrılır

# Tüm oyuncular için efekt
execute as @a at @s run particle minecraft:firework ~ ~6 ~ 4 2 4 0.4 150 force
execute as @a at @s run particle minecraft:flash ~ ~7 ~ 0 0 0 0 3 force
execute as @a at @s run particle minecraft:totem_of_undying ~ ~5 ~ 2 3 2 0.3 80 force

# Ses
execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 2.0 1.2
execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1.5 1.5

# Üçüncü finale
schedule function gcs:handlers/builtin/_firework_finale 20t replace
