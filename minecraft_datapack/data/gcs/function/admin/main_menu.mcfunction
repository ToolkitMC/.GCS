# ============================================
# GCS - Ana Yönetim Paneli
# ============================================

tellraw @s ""
tellraw @s {"text":"╔══════════════════════════════════════╗","color":"gold","bold":true}
tellraw @s [{"text":"║  ","color":"gold","bold":true},{"text":"GLOBAL COMMAND SYSTEM","color":"yellow","bold":true},{"text":"         ║","color":"gold","bold":true}]
tellraw @s {"text":"╚══════════════════════════════════════╝","color":"gold","bold":true}
tellraw @s ""

# İstatistikler
function gcs:admin/show_stats

tellraw @s ""
tellraw @s {"text":"┌─ MENÜ ────────────────────────────┐","color":"gray"}

# Handler İşlemleri
tellraw @s [{"text":"│ ","color":"gray"},{"text":"[➕] ","color":"green","bold":true},{"text":"Handler Ekle","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/add_handler {name:\"komut_adi\",label:\"Görünen Ad\",description:\"Açıklama\",command:\"say test\",auth_level:1,category:\"utility\"}"},"hoverEvent":{"action":"show_text","value":"Yeni handler oluştur"}}]

tellraw @s [{"text":"│ ","color":"gray"},{"text":"[📋] ","color":"yellow","bold":true},{"text":"Handler Listesi","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/list_handlers"},"hoverEvent":{"action":"show_text","value":"Tüm handler'ları göster"}}]

tellraw @s [{"text":"│ ","color":"gray"},{"text":"[🔍] ","color":"aqua","bold":true},{"text":"Handler Ara","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/search_handler {query:\"arama_kelimesi\"}"},"hoverEvent":{"action":"show_text","value":"Handler ara"}}]

tellraw @s [{"text":"│ ","color":"gray"},{"text":"[✏️] ","color":"gold","bold":true},{"text":"Handler Düzenle","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/edit_handler {hid:1,name:\"new_name\",label:\"New Label\",description:\"New Desc\",command:\"say new\",auth_level:1,category:\"utility\"}"},"hoverEvent":{"action":"show_text","value":"Handler düzenle"}}]

tellraw @s [{"text":"│ ","color":"gray"},{"text":"[❌] ","color":"red","bold":true},{"text":"Handler Sil","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/delete_handler {hid:1}"},"hoverEvent":{"action":"show_text","value":"Handler sil"}}]

tellraw @s [{"text":"│ ","color":"gray"},{"text":"[🔄] ","color":"light_purple","bold":true},{"text":"Handler Aç/Kapat","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/toggle_handler {hid:1}"},"hoverEvent":{"action":"show_text","value":"Handler'ı aktif/pasif yap"}}]

tellraw @s {"text":"├───────────────────────────────────┤","color":"gray"}

# Yetki İşlemleri
tellraw @s [{"text":"│ ","color":"gray"},{"text":"[👤] ","color":"aqua","bold":true},{"text":"Yetki Ver","color":"white","clickEvent":{"action":"suggest_command","value":"/function gcs:admin/grant_auth {player:\"OyuncuAdi\",level:1}"},"hoverEvent":{"action":"show_text","value":"Oyuncuya yetki ver\n§7Level 1: Kullanıcı\n§7Level 2: Moderatör\n§7Level 3: Admin"}}]

tellraw @s [{"text":"│ ","color":"gray"},{"text":"[👥] ","color":"green","bold":true},{"text":"Yetki Listesi","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/list_auth"},"hoverEvent":{"action":"show_text","value":"Yetkili oyuncuları göster"}}]

tellraw @s {"text":"├───────────────────────────────────┤","color":"gray"}

# Sistem İşlemleri
tellraw @s [{"text":"│ ","color":"gray"},{"text":"[📊] ","color":"yellow","bold":true},{"text":"Detaylı İstatistikler","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/detailed_stats"},"hoverEvent":{"action":"show_text","value":"Sistem istatistikleri"}}]

tellraw @s [{"text":"│ ","color":"gray"},{"text":"[💾] ","color":"aqua","bold":true},{"text":"Export/Backup","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/export"},"hoverEvent":{"action":"show_text","value":"Handler'ları dışa aktar"}}]

tellraw @s [{"text":"│ ","color":"gray"},{"text":"[🔧] ","color":"gold","bold":true},{"text":"Bakım Modu","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/maintenance"},"hoverEvent":{"action":"show_text","value":"Bakım modunu aç/kapat"}}]

tellraw @s {"text":"└───────────────────────────────────┘","color":"gray"}
tellraw @s ""

# Yetki seviyesi göster
tellraw @s [{"text":"Yetki Seviyeniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua","bold":true}]
tellraw @s ""
