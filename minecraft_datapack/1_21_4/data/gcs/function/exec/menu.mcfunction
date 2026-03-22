execute unless score @s gcs.auth matches 1.. run return fail
tellraw @s ""
tellraw @s {"text":"╔══ Komut Menüsü ══════════════════╗","color":"yellow","bold":true}
tellraw @s [{"text":"║ ","color":"yellow"},{"text":"[📋] Tüm Komutlar","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:exec/list_all"},"hoverEvent":{"action":"show_text","value":"Yetkine göre tüm aktif komutlar"}}]
tellraw @s [{"text":"║ ","color":"yellow"},{"text":"[🛠] Utility","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:exec/list {category:\"utility\"}"}},{"text":"  "},{"text":"[🚀] Teleport","color":"aqua","clickEvent":{"action":"run_command","value":"/function gcs:exec/list {category:\"teleport\"}"}},{"text":"  "},{"text":"[⚡] Ability","color":"light_purple","clickEvent":{"action":"run_command","value":"/function gcs:exec/list {category:\"ability\"}"}}]
tellraw @s [{"text":"║ ","color":"yellow"},{"text":"[🌍] World","color":"green","clickEvent":{"action":"run_command","value":"/function gcs:exec/list {category:\"world\"}"}},{"text":"  "},{"text":"[👑] Admin","color":"red","clickEvent":{"action":"run_command","value":"/function gcs:exec/list {category:\"admin\"}"}}]
tellraw @s [{"text":"║ ","color":"yellow"},{"text":"[🕐] Son Çalıştırılanlar","color":"aqua","clickEvent":{"action":"run_command","value":"/function gcs:exec/recent"}}]
tellraw @s [{"text":"║ ","color":"yellow"},{"text":"[🔍] Ara: ","color":"gold"},{"text":"Buraya tıkla","color":"gray","clickEvent":{"action":"suggest_command","value":"/function gcs:exec/search {query:\""},"hoverEvent":{"action":"show_text","value":"Handler adı veya kategori gir"}}]
tellraw @s {"text":"╚══════════════════════════════════╝","color":"yellow","bold":true}
tellraw @s ""
