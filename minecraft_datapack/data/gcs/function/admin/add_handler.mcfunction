# Mevcut handler sayısını kontrol et
execute store result score #current gcs.count run data get storage gcs:db handlers

# Limit kontrolü
execute if score #current gcs.count >= #max gcs.count run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler limiti doldu! (19/19)","color":"red"}]
execute if score #current gcs.count >= #max gcs.count run tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Önce mevcut bir handler'ı silin.","color":"yellow"}]
execute if score #current gcs.count >= #max gcs.count run return fail

# Yeni handler ID oluştur
scoreboard players add #current gcs.count 1
execute store result score #new_hid gcs.hid run scoreboard players get #current gcs.count

# Handler'ı ekle
execute store result storage gcs:temp new_hid int 1 run scoreboard players get #new_hid gcs.hid
$data modify storage gcs:db handlers append value {hid:0,name:"$(name)",label:"$(label)",description:"$(description)",auth_level:$(auth_level),enabled:1b,category:"$(category)",command:"$(command)"}

# Son eklenen handler'ın hid'ini güncelle
execute store result storage gcs:db handlers[-1].hid int 1 run scoreboard players get #new_hid gcs.hid

# Metadata güncelle
execute store result storage gcs:db metadata.handler_count int 1 run data get storage gcs:db handlers
data modify storage gcs:db metadata.last_update set value "Handler Added"

# Başarı mesajı
tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Handler başarıyla eklendi!","color":"green"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"ID: ","color":"gray"},{"score":{"name":"#new_hid","objective":"gcs.hid"},"color":"aqua"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"İsim: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Etiket: ","color":"gray"},{"text":"$(label)","color":"white"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Kategori: ","color":"gray"},{"text":"$(category)","color":"gold"}]
$tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Yetki: ","color":"gray"},{"text":"$(auth_level)","color":"aqua"}]
tellraw @s ""

# Slot durumu göster
execute store result score #slots gcs.count run scoreboard players get #max gcs.count
execute store result score #current gcs.count run data get storage gcs:db handlers
scoreboard players operation #slots gcs.count -= #current gcs.count
tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Kalan Slot: ","color":"gray"},{"score":{"name":"#slots","objective":"gcs.count"},"color":"yellow"},{"text":"/19","color":"dark_gray"}]
tellraw @s ""
