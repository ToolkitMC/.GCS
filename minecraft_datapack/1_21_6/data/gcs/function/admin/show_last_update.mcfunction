# Son updateme bilgilerini show
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Last Update: ","color":"gray"},{"nbt":"metadata.last_update","storage":"gcs:db","color":"yellow"}]
execute store result score #total_handlers gcs.temp if data storage gcs:db handlers[]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Total Handlers: ","color":"gray"},{"score":{"name":"#total_handlers","objective":"gcs.temp"},"color":"aqua"}]
execute store result score #version gcs.temp run data get storage gcs:db metadata.version
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Sistem Versionu: ","color":"gray"},{"text":"v","color":"green"},{"score":{"name":"#version","objective":"gcs.temp"},"color":"green"},{"text":".0","color":"green"}]
