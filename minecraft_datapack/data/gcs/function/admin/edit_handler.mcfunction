# Handler var mı kontrol et
$execute store success score #found gcs.count if data storage gcs:db handlers[{hid:$(hid)}]

execute if score #found gcs.count matches 0 run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler bulunamadı!","color":"red"}]
execute if score #found gcs.count matches 0 run return fail

# Önce sil
$data remove storage gcs:db handlers[{hid:$(hid)}]

# Yeni bilgilerle ekle (aynı hid ile)
$data modify storage gcs:db handlers append value {hid:$(hid),name:"$(name)",label:"$(label)",description:"$(description)",auth_level:$(auth_level),enabled:1b,category:"$(category)",command:"$(command)"}

# Metadata güncelle
data modify storage gcs:db metadata.last_update set value "Handler Updated"

# Başarı mesajı
tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Handler başarıyla güncellendi!","color":"green"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"ID: ","color":"gray"},{"text":"$(hid)","color":"aqua"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"İsim: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Etiket: ","color":"gray"},{"text":"$(label)","color":"white"}]
$tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Kategori: ","color":"gray"},{"text":"$(category)","color":"gold"}]
tellraw @s ""
