# Kullanım: /function gcs:admin/add_multi_handler {name:"isim",label:"Ad",description:"Açık",auth_level:2,category:"utility",commands:["komut1","komut2"]}
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Admin yetkisi gerekli!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run return 0

execute store result score #current gcs.count run data get storage gcs:db handlers
execute if score #current gcs.count >= #max gcs.count run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler limiti doldu! (50/50)","color":"red"}]
execute if score #current gcs.count >= #max gcs.count run return fail

scoreboard players add #current gcs.count 1
execute store result score #new_hid gcs.hid run scoreboard players get #current gcs.count
execute store result storage gcs:temp new_hid int 1 run scoreboard players get #new_hid gcs.hid

$data modify storage gcs:db handlers append value {hid:0,name:"$(name)",label:"$(label)",description:"$(description)",auth_level:$(auth_level),enabled:1b,category:"$(category)",commands:$(commands)}

# 1_21_4'te handlers[-1] geçerli
execute store result storage gcs:db handlers[-1].hid int 1 run scoreboard players get #new_hid gcs.hid

execute store result storage gcs:db metadata.handler_count int 1 run data get storage gcs:db handlers
data modify storage gcs:db metadata.last_update set value "MultiHandler Added"

tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Çoklu komutlu handler eklendi!","color":"green"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"ID: ","color":"gray"},{"score":{"name":"#new_hid","objective":"gcs.hid"},"color":"aqua"}]
$tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"İsim: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
tellraw @s ""
