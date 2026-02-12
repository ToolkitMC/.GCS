# Export işlemi
tellraw @s ""
tellraw @s [{"text":"[💾] ","color":"aqua","bold":true},{"text":"EXPORT/BACKUP","color":"gold","bold":true}]
tellraw @s ""

# Handler verilerini göster
tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Tüm handler verileri storage'da saklanıyor:","color":"gray"}]
tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"Storage Konumu: ","color":"gray"},{"text":"gcs:db","color":"aqua"}]
tellraw @s ""

# Komut önerisi
tellraw @s [{"text":"[📋] ","color":"yellow"},{"text":"Verileri görüntülemek için:","color":"white"}]
tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"/data get storage gcs:db","color":"green","clickEvent":{"action":"suggest_command","value":"/data get storage gcs:db"},"hoverEvent":{"action":"show_text","value":"Tüm verileri göster"}}]
tellraw @s ""

tellraw @s [{"text":"[📝] ","color":"yellow"},{"text":"Handler'ları kopyalamak için:","color":"white"}]
tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"/data get storage gcs:db handlers","color":"green","clickEvent":{"action":"suggest_command","value":"/data get storage gcs:db handlers"},"hoverEvent":{"action":"show_text","value":"Handler listesini göster"}}]
tellraw @s ""

# İstatistikler
execute store result score #total gcs.count run data get storage gcs:db handlers
tellraw @s [{"text":"[📊] ","color":"gold"},{"text":"Export İstatistikleri:","color":"white"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Handler Sayısı: ","color":"gray"},{"score":{"name":"#total","objective":"gcs.count"},"color":"aqua"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Durum: ","color":"gray"},{"text":"✓ Hazır","color":"green"}]
tellraw @s ""

tellraw @s [{"text":"[!] ","color":"red"},{"text":"Not: ","color":"white"},{"text":"Verileri elle yedekleyip başka bir dünyaya aktarabilirsiniz.","color":"gray"}]
tellraw @s ""
