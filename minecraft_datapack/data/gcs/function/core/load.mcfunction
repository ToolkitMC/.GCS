# ============================================
# Global Command System (GCS) v1.0
# © 2026 - Handler Limit: 13-19
# MIT License
# ============================================

# Scoreboards
scoreboard objectives add gcs.ui trigger {"text":"GCS Ana Menü","color":"gold"}
scoreboard objectives add gcs.exec trigger {"text":"Handler Çalıştır","color":"yellow"}
scoreboard objectives add gcs.auth dummy {"text":"Yetki Seviyesi","color":"aqua"}
scoreboard objectives add gcs.hid dummy {"text":"Handler ID","color":"white"}
scoreboard objectives add gcs.count dummy {"text":"Sayaç","color":"gray"}
scoreboard objectives add gcs.perf dummy {"text":"Performans","color":"green"}
scoreboard objectives add gcs.aura dummy {"text":"Partikül Aura","color":"light_purple"}
scoreboard objectives add gcs.aura.timer dummy {"text":"Aura Timer","color":"dark_purple"}
scoreboard objectives add gcs.temp dummy {"text":"Geçici Değişken","color":"dark_gray"}

# Sabitler
scoreboard players set #max gcs.count 19
scoreboard players set #min gcs.count 13

# Storage'ı başlat
execute unless data storage gcs:db handlers run function gcs:core/install_defaults

# Metadata
execute unless data storage gcs:db metadata run data modify storage gcs:db metadata set value {version:"1.0",last_update:"",maintenance:0b,total_executions:0}

# Welcome message
tellraw @a[tag=gcs.admin] ""
tellraw @a[tag=gcs.admin] {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @a[tag=gcs.admin] [{"text":"  ","color":"gold"},{"text":"GCS v1.0","color":"yellow","bold":true},{"text":" yüklendi!","color":"white"}]
tellraw @a[tag=gcs.admin] [{"text":"  ","color":"gray"},{"text":"MIT License","color":"dark_gray"}]
tellraw @a[tag=gcs.admin] {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @a[tag=gcs.admin] ""
