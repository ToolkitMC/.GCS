# GCS - Çoklu Komutlu Handler Ekleme
# Kullanım (komut satırından):
#   /function gcs:admin/add_multi_handler {name:"isim",label:"Etiket",description:"Açıklama",auth_level:2,category:"utility",commands:["komut1","komut2","komut3"]}
# commands alanı direkt NBT string list — slot yok, dilediğin kadar komut.

execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Admin yetkisi gerekli!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run return 0

execute store result score #current gcs.count run data get storage gcs:db handlers
execute if score #current gcs.count >= #max gcs.count run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler limiti doldu! (50/50)","color":"red"}]
execute if score #current gcs.count >= #max gcs.count run return fail

scoreboard players add #current gcs.count 1
execute store result score #new_hid gcs.hid run scoreboard players get #current gcs.count
execute store result storage gcs:temp new_hid int 1 run scoreboard players get #new_hid gcs.hid

# Handler'ı commands listesiyle ekle — makro direkt NBT list olarak alır
$data modify storage gcs:db handlers append value {hid:0,name:"$(name)",label:"$(label)",description:"$(description)",auth_level:$(auth_level),enabled:1b,category:"$(category)",commands:$(commands)}

# hid güncelle — pozitif index
execute store result score #last_idx gcs.count run data get storage gcs:db handlers
scoreboard players remove #last_idx gcs.count 1
execute store result storage gcs:temp last_idx int 1 run scoreboard players get #last_idx gcs.count
function gcs:admin/_set_last_hid with storage gcs:temp

# Komut sayısını say — helper makro ile
function gcs:admin/_count_last_cmds with storage gcs:temp

# Metadata
execute store result storage gcs:db metadata.handler_count int 1 run data get storage gcs:db handlers
data modify storage gcs:db metadata.last_update set value "MultiHandler Added"

# Başarı
tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Çoklu komutlu handler eklendi!","color":"green"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"ID: ","color":"gray"},{"score":{"name":"#new_hid","objective":"gcs.hid"},"color":"aqua"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"İsim: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Komut Sayısı: ","color":"gray"},{"text":"commands listesinde","color":"white"}]
tellraw @s ""
