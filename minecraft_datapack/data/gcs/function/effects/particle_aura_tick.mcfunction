# Particle Aura - Tick Efekti
# Her tick çalışır ve oyuncunun etrafında partikül gösterir

# Çoklu partikül katmanları - farklı hızlarda dönen efekt
# Rastgele partikül çeşitleri için timer
scoreboard players add @s gcs.aura.timer 1
execute if score @s gcs.aura.timer matches 21.. run scoreboard players set @s gcs.aura.timer 0

# Ana halo efekti - dairesel
execute if score @s gcs.aura.timer matches 1..5 run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute if score @s gcs.aura.timer matches 6..10 run particle minecraft:glow ~ ~1 ~ 0.6 0.5 0.6 0 2 force
execute if score @s gcs.aura.timer matches 11..15 run particle minecraft:end_rod ~ ~1.2 ~ 0.4 0.4 0.4 0.02 2 force
execute if score @s gcs.aura.timer matches 16..20 run particle minecraft:soul_fire_flame ~ ~0.8 ~ 0.5 0.5 0.5 0.01 2 force

# Yükseliş efekti - zaman zaman
execute if score @s gcs.aura.timer matches 1 run particle minecraft:firework ~ ~0.5 ~ 0.3 0.3 0.3 0.05 5 force

# Yavaş dönüş partikül efekti
execute if score @s gcs.aura.timer matches 10 run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.5 10 force

# Zemin efekti - her 10 tick
execute if score @s gcs.aura.timer matches 1 run particle minecraft:happy_villager ~ ~0.1 ~ 0.5 0.1 0.5 0 3 force
