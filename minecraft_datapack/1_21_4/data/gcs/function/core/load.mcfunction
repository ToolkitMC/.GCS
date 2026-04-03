# AME (Advanced Macro Engine) varlik checku
execute unless data storage macro:engine {global:{loaded:1b}} run tellraw @a [{"text":"[GCS] ","color":"gold","bold":true},{"text":"WARNING: ","color":"red"},{"text":"Advanced Macro Engine (AME) not loaded! Install AME for full functionality.","color":"yellow"}]
# AME yuklu degilse cooldown sistemi calismiyor — uyar ama devam et

execute if data storage gcs:db {metadata:{loaded:1b}} run tellraw @s [{"text":"[GCS] ","color":"gold"},{"text":"Already loaded.","color":"gray"}]
execute if data storage gcs:db {metadata:{loaded:1b}} run return 0

scoreboard objectives add gcs.ui trigger {"text":"GCS Main Menu","color":"gold"}
scoreboard objectives add gcs.exec trigger {"text":"Execute Handler","color":"yellow"}
scoreboard objectives add gcs.run trigger {"text":"Run Command","color":"yellow"}
scoreboard objectives add gcs.auth dummy {"text":"Auth Level","color":"aqua"}
scoreboard objectives add gcs.hid dummy {"text":"Handler ID","color":"white"}
scoreboard objectives add gcs.count dummy {"text":"Counter","color":"gray"}
scoreboard objectives add gcs.perf dummy {"text":"Performance","color":"green"}
scoreboard objectives add gcs.aura dummy {"text":"Particle Aura","color":"light_purple"}
scoreboard objectives add gcs.aura.timer dummy {"text":"Aura Timer","color":"dark_purple"}
scoreboard objectives add gcs.temp dummy {"text":"Temp Variable","color":"dark_gray"}
scoreboard objectives add gcs.undo trigger {"text":"Undo","color":"red"}

scoreboard players set #max gcs.count 50
scoreboard players set #min gcs.count 50

execute unless data storage gcs:db handlers run function gcs:core/install_defaults
execute unless data storage gcs:db metadata run data modify storage gcs:db metadata set value {last_update:"",maintenance:0b,total_executions:0}
execute unless data storage gcs:db recent run data modify storage gcs:db recent set value []
execute unless data storage gcs:db waypoints run data modify storage gcs:db waypoints set value []
execute unless data storage gcs:cooldowns cooldowns run data modify storage gcs:cooldowns cooldowns set value []
execute unless data storage gcs:waypoints points run data modify storage gcs:waypoints points set value []
scoreboard objectives add gcs.back.x dummy
scoreboard objectives add gcs.back.y dummy
scoreboard objectives add gcs.back.z dummy
data modify storage gcs:temp metadata.version set value "3.1.0"


data modify storage gcs:db metadata.loaded set value 1b

tellraw @a ""
tellraw @a {"text":"════════════════════════════════","color":"gold","bold":true}
tellraw @a [{"text":" "},{"text":"GCS v","color":"yellow","bold":true},{"nbt":"metadata.version","storage":"gcs:temp","color":"white"},{"text":" loaded!","color":"white"}]
tellraw @a [{"text":"  ","color":"gray"},{"text":"🛡️ Permission | 🔗 Multi-Command | 📍 Waypoint | ↩ Back","color":"aqua"}]
tellraw @a [{"text":"  ","color":"gray"},{"text":"MIT License","color":"dark_gray"}]
tellraw @a {"text":"════════════════════════════════","color":"gold","bold":true}
tellraw @a ""
