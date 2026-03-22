# Kullanım: function gcs:cooldown/set {hid:X,ticks:Y}
$scoreboard players set #cd_hid gcs.count $(hid)
$scoreboard players set #cd_ticks gcs.count $(ticks)
execute store result storage gcs:temp cd_hid int 1 run scoreboard players get #cd_hid gcs.count
execute store result storage gcs:temp cd_ticks int 1 run scoreboard players get #cd_ticks gcs.count
# UUID[0] oyuncuyu temsil eder (string store yok — int kullan)
execute store result storage gcs:temp cd_uuid int 1 run data get entity @s UUID[0]
data modify storage gcs:cooldowns cooldowns append value {uuid:0,hid:0,ticks:0}
# Son index = append sonrası uzunluk - 1; scoreboard üzerinden pozitif index ile yaz
execute store result score #cd_last gcs.count run data get storage gcs:cooldowns cooldowns
scoreboard players remove #cd_last gcs.count 1
function gcs:cooldown/_write with storage gcs:temp
data remove storage gcs:temp cd_hid
data remove storage gcs:temp cd_ticks
data remove storage gcs:temp cd_uuid
