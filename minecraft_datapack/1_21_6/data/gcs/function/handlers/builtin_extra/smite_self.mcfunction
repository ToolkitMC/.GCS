# Kendine yıldırım çak (argümansız versiyon)
execute at @s run summon minecraft:lightning_bolt ~ ~ ~
tellraw @a [{"text":"[⚡] ","color":"yellow","bold":true},{"selector":"@s"},{"text":" yıldırıma çarptı!","color":"gray"}]
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.0 1.0
