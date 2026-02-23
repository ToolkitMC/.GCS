# Handler validation
$execute store success score #valid gcs.count if data storage gcs:db handlers[{hid:$(hid)}]

execute if score #valid gcs.count matches 0 run tellraw @s [{"text":"[✗] ","color":"red","bold":true},{"text":"Geçersiz handler ID!","color":"red"}]
execute if score #valid gcs.count matches 0 run return fail

# Check if handler is enabled
$execute store success score #enabled gcs.count if data storage gcs:db handlers[{hid:$(hid),enabled:1b}]

execute if score #enabled gcs.count matches 0 run tellraw @s [{"text":"[!] ","color":"yellow","bold":true},{"text":"Bu handler şu anda devre dışı!","color":"yellow"}]
execute if score #enabled gcs.count matches 0 run return fail

return 1
