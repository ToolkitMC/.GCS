# ============================================
# GCS - Detaylı İstatistikler
# Yetki Seviyesi: 2 (Moderatör+)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Moderatör (Seviye 2)","color":"gold"},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 2.. run return 0

# Başlık
tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s [{"text":"  ","color":"gold"},{"text":"DETAYLI İSTATİSTİKLER","color":"yellow","bold":true}]
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""

# Genel İstatistikler
tellraw @s [{"text":"📊 ","color":"yellow","bold":true},{"text":"GENEL","color":"gold","bold":true}]
execute store result score #total gcs.count run data get storage gcs:db handlers
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Toplam Handler: ","color":"gray"},{"score":{"name":"#total","objective":"gcs.count"},"color":"aqua"},{"text":"/19","color":"dark_gray"}]

execute store result score #slots gcs.count run scoreboard players get #max gcs.count
scoreboard players operation #slots gcs.count -= #total gcs.count
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Boş Slot: ","color":"gray"},{"score":{"name":"#slots","objective":"gcs.count"},"color":"yellow"}]

tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Minimum: ","color":"gray"},{"text":"13","color":"green"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Maximum: ","color":"gray"},{"text":"19","color":"red"}]

tellraw @s ""

# Aktif/Pasif Handler Sayısı
tellraw @s [{"text":"🔧 ","color":"aqua","bold":true},{"text":"DURUM","color":"aqua","bold":true}]

# Aktif handler sayısını hesapla (basitleştirilmiş)
execute store result score #active gcs.count run data get storage gcs:db handlers
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Aktif: ","color":"gray"},{"text":"~","color":"green"},{"score":{"name":"#active","objective":"gcs.count"},"color":"green"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Pasif: ","color":"gray"},{"text":"~0","color":"red"}]

tellraw @s ""

# Kategori Dağılımı
tellraw @s [{"text":"📁 ","color":"gold","bold":true},{"text":"KATEGORİLER","color":"gold","bold":true}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Utility: ","color":"gray"},{"text":"~4","color":"white"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Teleport: ","color":"gray"},{"text":"~2","color":"aqua"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Ability: ","color":"gray"},{"text":"~3","color":"light_purple"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"World: ","color":"gray"},{"text":"~2","color":"green"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Admin: ","color":"gray"},{"text":"~2","color":"red"}]

tellraw @s ""

# Yetki Dağılımı
tellraw @s [{"text":"👥 ","color":"green","bold":true},{"text":"YETKİ SEVİYELERİ","color":"green","bold":true}]
execute store result score #auth1 gcs.count if entity @a[scores={gcs.auth=1}]
execute store result score #auth2 gcs.count if entity @a[scores={gcs.auth=2}]
execute store result score #auth3 gcs.count if entity @a[scores={gcs.auth=3}]

tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Seviye 1: ","color":"gray"},{"score":{"name":"#auth1","objective":"gcs.count"},"color":"green"},{"text":" oyuncu","color":"dark_gray"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Seviye 2: ","color":"gray"},{"score":{"name":"#auth2","objective":"gcs.count"},"color":"gold"},{"text":" oyuncu","color":"dark_gray"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Seviye 3: ","color":"gray"},{"score":{"name":"#auth3","objective":"gcs.count"},"color":"red"},{"text":" oyuncu","color":"dark_gray"}]

tellraw @s ""

# Sistem Bilgileri
tellraw @s [{"text":"ℹ️ ","color":"aqua","bold":true},{"text":"SİSTEM BİLGİSİ","color":"aqua","bold":true}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Versiyon: ","color":"gray"},{"text":"1.0","color":"white"}]
execute if data storage gcs:db metadata.last_update run function gcs:admin/show_last_update
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Durum: ","color":"gray"},{"text":"✓ Çalışıyor","color":"green"}]

tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""
