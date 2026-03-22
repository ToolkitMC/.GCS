item modify entity @s weapon.mainhand gcs:repair_item
tellraw @s [{"text":"[🔧] ","color":"aqua","bold":true},{"text":"Eldeki item tamir edildi!","color":"green"}]
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1.0 1.0
