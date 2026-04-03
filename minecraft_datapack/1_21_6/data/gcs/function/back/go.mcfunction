# Return to saved location
execute unless score @s gcs.auth matches 1.. run return fail
execute if score @s gcs.back.x matches -30000000..30000000 run function gcs:back/_do_tp
execute unless score @s gcs.back.x matches -30000000..30000000 run tellraw @s [{"text":"[!] ","color":"red"},{"text":"No saved location!","color":"gray"}]
