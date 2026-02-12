# Handler var mı kontrol et
$execute store success score #found gcs.count if data storage gcs:db handlers[{hid:$(hid)}]

execute if score #found gcs.count matches 0 run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler bulunamadı!","color":"red"}]
execute if score #found gcs.count matches 0 run return fail

# Mevcut durumu al
$execute store success score #enabled gcs.count if data storage gcs:db handlers[{hid:$(hid),enabled:1b}]

# Toggle
$execute if score #enabled gcs.count matches 1 run data modify storage gcs:db handlers[{hid:$(hid)}].enabled set value 0b
$execute if score #enabled gcs.count matches 0 run data modify storage gcs:db handlers[{hid:$(hid)}].enabled set value 1b

# Yeni durumu al
$execute store success score #new_state gcs.count if data storage gcs:db handlers[{hid:$(hid),enabled:1b}]

# Bilgi göster
tellraw @s ""
$tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Handler ID $(hid) durumu değiştirildi","color":"green"}]

execute if score #new_state gcs.count matches 1 run tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Durum: ","color":"gray"},{"text":"AKTİF","color":"green","bold":true}]
execute if score #new_state gcs.count matches 0 run tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Durum: ","color":"gray"},{"text":"PASİF","color":"red","bold":true}]
tellraw @s ""
