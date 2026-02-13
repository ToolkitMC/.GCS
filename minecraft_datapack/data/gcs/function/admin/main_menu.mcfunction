# ============================================
# GCS - Ana Yönetim Paneli
# Yetki Seviyesi: 1 (Tüm yetkili kullanıcılar)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 1.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu menüyü açmak için yetkiniz yok!","color":"red"}]
execute unless score @s gcs.auth matches 1.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Bir yöneticiden yetki isteyebilirsiniz.","color":"gray"}]
execute unless score @s gcs.auth matches 1.. run return 0

tellraw @s ""
tellraw @s {"text":"╔══════════════════════════════════════╗","color":"gold","bold":true}
tellraw @s [{"text":"║  ","color":"gold","bold":true},{"text":"GLOBAL COMMAND SYSTEM","color":"yellow","bold":true},{"text":"         ║","color":"gold","bold":true}]
tellraw @s {"text":"╚══════════════════════════════════════╝","color":"gold","bold":true}
tellraw @s ""

# İstatistikler
function gcs:admin/show_stats

tellraw @s ""
tellraw @s {"text":"┌─ MENÜ ────────────────────────────┐","color":"gray"}

# Handler İşlemleri (Sadece Admin - Level 3)
execute if score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[➕] ","color":"green","bold":true},{"text":"Handler Ekle","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/add_handler {name:\"komut_adi\",label:\"Görünen Ad\",description:\"Açıklama\",command:\"say test\",auth_level:1,category:\"utility\"}"},"hoverEvent":{"action":"show_text","value":"Yeni handler oluştur\n§7§oGerekli: Admin (Lv3)"}}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[➕] ","color":"dark_gray"},{"text":"Handler Ekle","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":"§cGerekli: Admin (Lv3)"}}]

tellraw @s [{"text":"│ ","color":"gray"},{"text":"[📋] ","color":"yellow","bold":true},{"text":"Handler Listesi","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/list_handlers"},"hoverEvent":{"action":"show_text","value":"Tüm handler'ları göster"}}]

execute if score @s gcs.auth matches 2.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[🔍] ","color":"aqua","bold":true},{"text":"Handler Ara","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/search_handler {query:\"arama_kelimesi\"}"},"hoverEvent":{"action":"show_text","value":"Handler ara\n§7§oGerekli: Moderatör (Lv2)"}}]
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[🔍] ","color":"dark_gray"},{"text":"Handler Ara","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":"§cGerekli: Moderatör (Lv2)"}}]

execute if score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[✏️] ","color":"gold","bold":true},{"text":"Handler Düzenle","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/edit_handler {hid:1,name:\"new_name\",label:\"New Label\",description:\"New Desc\",command:\"say new\",auth_level:1,category:\"utility\"}"},"hoverEvent":{"action":"show_text","value":"Handler düzenle\n§7§oGerekli: Admin (Lv3)"}}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[✏️] ","color":"dark_gray"},{"text":"Handler Düzenle","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":"§cGerekli: Admin (Lv3)"}}]

execute if score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[❌] ","color":"red","bold":true},{"text":"Handler Sil","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/delete_handler {hid:1}"},"hoverEvent":{"action":"show_text","value":"Handler sil\n§7§oGerekli: Admin (Lv3)"}}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[❌] ","color":"dark_gray"},{"text":"Handler Sil","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":"§cGerekli: Admin (Lv3)"}}]

execute if score @s gcs.auth matches 2.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[🔄] ","color":"light_purple","bold":true},{"text":"Handler Aç/Kapat","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/toggle_handler {hid:1}"},"hoverEvent":{"action":"show_text","value":"Handler'ı aktif/pasif yap\n§7§oGerekli: Moderatör (Lv2)"}}]
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[🔄] ","color":"dark_gray"},{"text":"Handler Aç/Kapat","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":"§cGerekli: Moderatör (Lv2)"}}]

tellraw @s {"text":"├───────────────────────────────────┤","color":"gray"}

# Yetki İşlemleri (Sadece Admin - Level 3)
execute if score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[👤] ","color":"aqua","bold":true},{"text":"Yetki Ver","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/grant_auth {player:\"OyuncuAdi\",level:1}"},"hoverEvent":{"action":"show_text","value":"Oyuncuya yetki ver\n§7Level 1: Kullanıcı\n§7Level 2: Moderatör\n§7Level 3: Admin\n§7§oGerekli: Admin (Lv3)"}}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[👤] ","color":"dark_gray"},{"text":"Yetki Ver","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":"§cGerekli: Admin (Lv3)"}}]

execute if score @s gcs.auth matches 2.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[👥] ","color":"green","bold":true},{"text":"Yetki Listesi","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/list_auth"},"hoverEvent":{"action":"show_text","value":"Yetkili oyuncuları göster\n§7§oGerekli: Moderatör (Lv2)"}}]
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[👥] ","color":"dark_gray"},{"text":"Yetki Listesi","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":"§cGerekli: Moderatör (Lv2)"}}]

tellraw @s {"text":"├───────────────────────────────────┤","color":"gray"}

# Sistem İşlemleri
execute if score @s gcs.auth matches 2.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[📊] ","color":"yellow","bold":true},{"text":"Detaylı İstatistikler","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/detailed_stats"},"hoverEvent":{"action":"show_text","value":"Sistem istatistikleri\n§7§oGerekli: Moderatör (Lv2)"}}]
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[📊] ","color":"dark_gray"},{"text":"Detaylı İstatistikler","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":"§cGerekli: Moderatör (Lv2)"}}]

execute if score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[💾] ","color":"aqua","bold":true},{"text":"Export/Backup","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/export"},"hoverEvent":{"action":"show_text","value":"Handler'ları dışa aktar\n§7§oGerekli: Admin (Lv3)"}}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[💾] ","color":"dark_gray"},{"text":"Export/Backup","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":"§cGerekli: Admin (Lv3)"}}]

execute if score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[🔧] ","color":"gold","bold":true},{"text":"Bakım Modu","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/maintenance"},"hoverEvent":{"action":"show_text","value":"Bakım modunu aç/kapat\n§7§oGerekli: Admin (Lv3)"}}]
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"│ ","color":"gray"},{"text":"[🔧] ","color":"dark_gray"},{"text":"Bakım Modu","color":"dark_gray","strikethrough":true,"hoverEvent":{"action":"show_text","value":"§cGerekli: Admin (Lv3)"}}]

tellraw @s {"text":"└───────────────────────────────────┘","color":"gray"}
tellraw @s ""

# Yetki seviyesi göster
execute if score @s gcs.auth matches 1 run tellraw @s [{"text":"Yetki Seviyeniz: ","color":"gray"},{"text":"1","color":"green","bold":true},{"text":" (Kullanıcı)","color":"gray"}]
execute if score @s gcs.auth matches 2 run tellraw @s [{"text":"Yetki Seviyeniz: ","color":"gray"},{"text":"2","color":"gold","bold":true},{"text":" (Moderatör)","color":"gray"}]
execute if score @s gcs.auth matches 3.. run tellraw @s [{"text":"Yetki Seviyeniz: ","color":"gray"},{"text":"3","color":"red","bold":true},{"text":" (Admin)","color":"gray"}]
tellraw @s ""
