# Strike self with lightning (admin test / punishment)
execute at @s run summon minecraft:lightning_bolt ~ ~ ~
tellraw @a [{"text":"[Smite] ","color":"yellow","bold":true},{"selector":"@s"},{"text":" was struck by lightning!","color":"gray"}]
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.0 1.0
