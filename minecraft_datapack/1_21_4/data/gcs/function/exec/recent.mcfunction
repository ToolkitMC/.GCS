execute unless score @s gcs.auth matches 1.. run return fail
execute unless data storage gcs:db recent run tellraw @s [{"text":"[!] ","color":"gray"},{"text":"Henüz hiç komut çalıştırılmadı.","color":"gray"}]
execute unless data storage gcs:db recent run return 0
tellraw @s ""
tellraw @s [{"text":"══ Son Çalıştırılanlar ══","color":"aqua","bold":true}]
function gcs:exec/_add_recent {idx:0}
function gcs:exec/_add_recent {idx:1}
function gcs:exec/_add_recent {idx:2}
function gcs:exec/_add_recent {idx:3}
function gcs:exec/_add_recent {idx:4}
tellraw @s ""
