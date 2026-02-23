# Arama sonucunu göster (her handler gösterilecek, kullanıcı manuel filtreleyecek)
# Gelecekte daha gelişmiş string matching eklenebilir

scoreboard players add #found gcs.count 1

# hid'yi scoreboard'a kaydet (tellraw'da kullanmak için)
$scoreboard players set #display_hid gcs.temp $(hid)

# Handler bilgilerini göster
$tellraw @s [{"text":"┌─ ","color":"dark_gray"},{"text":"#$(hid)","color":"aqua","bold":true},{"text":" │ ","color":"dark_gray"},{"text":"$(label)","color":"white","bold":true}]
$tellraw @s [{"text":"│  ","color":"dark_gray"},{"text":"İsim: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
$tellraw @s [{"text":"│  ","color":"dark_gray"},{"text":"Açıklama: ","color":"gray"},{"text":"$(description)","color":"white"}]
$tellraw @s [{"text":"│  ","color":"dark_gray"},{"text":"Kategori: ","color":"gray"},{"text":"$(category)","color":"gold"},{"text":" │ Yetki: ","color":"gray"},{"text":"$(auth_level)","color":"aqua"}]

# Durum
execute if score #enabled gcs.temp matches 1 run tellraw @s [{"text":"│  ","color":"dark_gray"},{"text":"Durum: ","color":"gray"},{"text":"● Aktif","color":"green"}]
execute unless score #enabled gcs.temp matches 1 run tellraw @s [{"text":"│  ","color":"dark_gray"},{"text":"Durum: ","color":"gray"},{"text":"○ Pasif","color":"red"}]

# İşlem butonları - hid'yi scoreboard'dan kullan
function gcs:admin/_search_show_buttons with storage gcs:temp current_handler
tellraw @s ""
