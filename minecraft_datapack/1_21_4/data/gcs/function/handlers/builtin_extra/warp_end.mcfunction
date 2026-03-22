function gcs:back/save
execute in minecraft:the_end run tp @s 0 64 0
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.8
tellraw @s [{"text":"[🌑] ","color":"dark_purple","bold":true},{"text":"End'e ışınlandın!","color":"light_purple"}]
