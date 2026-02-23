scoreboard objectives add gcs.ui trigger {"text":"GCS Ana Menü","color":"gold"}
scoreboard objectives add gcs.exec trigger {"text":"Handler Çalıştır","color":"yellow"}
scoreboard objectives add gcs.run trigger {"text":"Komut Çalıştır","color":"yellow"}
scoreboard objectives add gcs.auth dummy {"text":"Yetki Seviyesi","color":"aqua"}
scoreboard objectives add gcs.hid dummy {"text":"Handler ID","color":"white"}
scoreboard objectives add gcs.count dummy {"text":"Sayaç","color":"gray"}
scoreboard objectives add gcs.perf dummy {"text":"Performans","color":"green"}
scoreboard objectives add gcs.aura dummy {"text":"Partikül Aura","color":"light_purple"}
scoreboard objectives add gcs.aura.timer dummy {"text":"Aura Timer","color":"dark_purple"}
scoreboard objectives add gcs.temp dummy {"text":"Geçici Değişken","color":"dark_gray"}

scoreboard players set #max gcs.count 19
scoreboard players set #min gcs.count 13

execute unless data storage gcs:db handlers run function gcs:core/install_defaults
execute unless data storage gcs:db metadata run data modify storage gcs:db metadata set value {last_update:"",maintenance:0b,total_executions:0}
execute unless data storage gcs:db recent run data modify storage gcs:db recent set value []
data modify storage gcs:temp metadata.version set value "1.0.6"

tellraw @a ""
tellraw @a {"text":"════════════════════════════════","color":"gold","bold":true}
tellraw @a [{"text":" "},{"text":"GCS v","color":"yellow","bold":true},{"nbt":"metadata.version","storage":"gcs:temp","color":"white"},{"text":" yüklendi!","color":"white"}]
tellraw @a [{"text":"  ","color":"gray"},{"text":"🛡️ Yetki Kontrollü | 🔍 Gelişmiş Arama","color":"aqua"}]
tellraw @a [{"text":"  ","color":"gray"},{"text":"MIT License","color":"dark_gray"}]
tellraw @a {"text":"════════════════════════════════","color":"gold","bold":true}
tellraw @a ""