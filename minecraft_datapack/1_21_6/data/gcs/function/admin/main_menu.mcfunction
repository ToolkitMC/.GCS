execute unless score @s gcs.auth matches 1.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"You do not have permission to open this menu!","color":"red"}]
execute unless score @s gcs.auth matches 1.. run return 0
dialog show @s gcs:admin/main_menu
