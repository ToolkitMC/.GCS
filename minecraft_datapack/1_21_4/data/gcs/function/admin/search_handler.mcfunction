# ============================================
# GCS - Handler Arama Sistemi
# Yetki Seviyesi: 2 (Moderatör+)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Moderatör (Seviye 2)","color":"gold"},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 2.. run return 0

# Başlık
tellraw @s ""
tellraw @s {"text":"╔══════════════════════════════════════╗","color":"aqua","bold":true}
tellraw @s [{"text":"║  ","color":"aqua","bold":true},{"text":"🔍 HANDLER ARAMA","color":"white","bold":true},{"text":"                  ║","color":"aqua","bold":true}]
tellraw @s {"text":"╚══════════════════════════════════════╝","color":"aqua","bold":true}
tellraw @s ""
$tellraw @s [{"text":"Aranan: ","color":"gray"},{"text":"\"$(query)\"","color":"yellow","bold":true}]
tellraw @s ""
tellraw @s {"text":"───────────────────────────────────────","color":"dark_gray"}

# Arama sonuçlarını göster
scoreboard players set #found gcs.count 0
$data modify storage gcs:temp search_query set value "$(query)"

# Her handler'ı kontrol et
execute store result score #total gcs.count run data get storage gcs:db handlers
scoreboard players set #index gcs.count 0

# Handler'ları tara (maksimum 19 handler olduğu için)
function gcs:admin/_search_loop

# Sonuç mesajı
tellraw @s ""
tellraw @s {"text":"───────────────────────────────────────","color":"dark_gray"}
execute if score #found gcs.count matches 0 run tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Sonuç bulunamadı. Arama ipuçları:","color":"gray"}]
execute if score #found gcs.count matches 0 run tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Handler ismini veya etiketini kontrol edin","color":"gray"}]
execute if score #found gcs.count matches 0 run tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Büyük/küçük harfe dikkat edin","color":"gray"}]
execute if score #found gcs.count matches 0 run tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Tüm handler'lar: ","color":"gray"},{"text":"[Listele]","color":"green","clickEvent":{"action":"run_command","value":"/function gcs:admin/list_handlers"}}]

execute if score #found gcs.count matches 1.. run tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"score":{"name":"#found","objective":"gcs.count"},"color":"aqua"},{"text":" sonuç bulundu","color":"green"}]
tellraw @s ""

# Temizlik
data remove storage gcs:temp search_query
