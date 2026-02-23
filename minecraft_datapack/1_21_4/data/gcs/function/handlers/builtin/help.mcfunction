# Yardım menüsü
tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s [{"text":"  ","color":"gold"},{"text":"GCS YARDIM","color":"yellow","bold":true}]
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""

tellraw @s [{"text":"🎮 ","color":"aqua","bold":true},{"text":"TEMEL KULLANIM","color":"aqua","bold":true}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"/trigger gcs.ui","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger gcs.ui"}},{"text":" - Yönetim panelini aç","color":"gray"}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"/trigger gcs.exec set <ID>","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger gcs.exec set "}},{"text":" - Handler çalıştır","color":"gray"}]
tellraw @s ""

tellraw @s [{"text":"⚡ ","color":"yellow","bold":true},{"text":"HIZLI ERİŞİM","color":"yellow","bold":true}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Handler Listesi","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/list_handlers"},"hoverEvent":{"action":"show_text","value":"Tüm handler'ları göster"}}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"İstatistikler","color":"white","clickEvent":{"action":"run_command","value":"/function gcs:admin/detailed_stats"},"hoverEvent":{"action":"show_text","value":"Detaylı istatistikler"}}]
tellraw @s ""

tellraw @s [{"text":"📚 ","color":"green","bold":true},{"text":"YETKİ SEVİYELERİ","color":"green","bold":true}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Seviye 1","color":"green"},{"text":" - Temel komutlar","color":"gray"}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Seviye 2","color":"gold"},{"text":" - Moderatör komutları","color":"gray"}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Seviye 3","color":"red"},{"text":" - Admin komutları","color":"gray"}]
tellraw @s ""

tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""
