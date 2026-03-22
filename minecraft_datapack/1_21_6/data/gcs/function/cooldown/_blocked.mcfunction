scoreboard players set #cd_ok gcs.count 0
execute store result score #cd_left gcs.count run data get storage gcs:temp cd_entry.ticks
tellraw @s [{"text":"[⏱] ","color":"red","bold":true},{"text":"Cooldown! ","color":"red"},{"score":{"name":"#cd_left","objective":"gcs.count"},"color":"yellow"},{"text":" tick bekleyin.","color":"gray"}]
