# Zamanı dondur / çöz — toggle
execute unless data storage gcs:db time_frozen run data modify storage gcs:db time_frozen set value 0b

execute store result score #tf_state gcs.count run data get storage gcs:db time_frozen 1

# OFF → ON
execute if score #tf_state gcs.count matches 0 run gamerule doDaylightCycle false
execute if score #tf_state gcs.count matches 0 run data modify storage gcs:db time_frozen set value 1b
execute if score #tf_state gcs.count matches 0 run tellraw @a [{"text":"[🕐] ","color":"gold","bold":true},{"text":"Zaman donduruldu!","color":"yellow"}]

# ON → OFF
execute if score #tf_state gcs.count matches 1 run gamerule doDaylightCycle true
execute if score #tf_state gcs.count matches 1 run data modify storage gcs:db time_frozen set value 0b
execute if score #tf_state gcs.count matches 1 run tellraw @a [{"text":"[🕐] ","color":"gold","bold":true},{"text":"Zaman akışı devam ediyor.","color":"green"}]
