# Hedef oyuncuyu dondur / çöz
# Çağrı: function gcs:handlers/builtin_extra/freeze {target:"OyuncuAdi"}
# toggle_states listesi yoksa oluştur
execute unless data storage gcs:db freeze_states run data modify storage gcs:db freeze_states set value []

$execute unless data storage gcs:db freeze_states[{target:"$(target)"}] run data modify storage gcs:db freeze_states append value {target:"$(target)",frozen:0b}

$execute store result score #fz_state gcs.count run data get storage gcs:db freeze_states[{target:"$(target)"}].frozen 1

# OFF → ON (dondur)
$execute if score #fz_state gcs.count matches 0 as $(target) run effect give @s minecraft:slowness 999999 255 true
$execute if score #fz_state gcs.count matches 0 as $(target) run effect give @s minecraft:jump_boost 999999 128 true
$execute if score #fz_state gcs.count matches 0 run data modify storage gcs:db freeze_states[{target:"$(target)"}].frozen set value 1b
$execute if score #fz_state gcs.count matches 0 run tellraw @a[tag=gcs_admin] [{"text":"[❄] ","color":"aqua","bold":true},{"text":"$(target)","color":"yellow"},{"text":" donduruldu.","color":"red"}]
$execute if score #fz_state gcs.count matches 0 as $(target) run tellraw @s [{"text":"[❄] ","color":"aqua","bold":true},{"text":"Yönetici tarafından donduruldunuz!","color":"red"}]

# ON → OFF (çöz)
$execute if score #fz_state gcs.count matches 1 as $(target) run effect clear @s minecraft:slowness
$execute if score #fz_state gcs.count matches 1 as $(target) run effect clear @s minecraft:jump_boost
$execute if score #fz_state gcs.count matches 1 run data modify storage gcs:db freeze_states[{target:"$(target)"}].frozen set value 0b
$execute if score #fz_state gcs.count matches 1 run tellraw @a[tag=gcs_admin] [{"text":"[❄] ","color":"aqua","bold":true},{"text":"$(target)","color":"yellow"},{"text":" çözüldü.","color":"green"}]
$execute if score #fz_state gcs.count matches 1 as $(target) run tellraw @s [{"text":"[❄] ","color":"green","bold":true},{"text":"Serbest bırakıldınız.","color":"white"}]
