$data modify storage gcs:temp current_handler set from storage gcs:db handlers[{hid:$(hid)}]

execute unless data storage gcs:temp current_handler run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler bulunamadı!","color":"red"}]
execute unless data storage gcs:temp current_handler run return fail

execute unless data storage gcs:temp current_handler{enabled:1b} run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu handler şu anda pasif!","color":"red"}]
execute unless data storage gcs:temp current_handler{enabled:1b} run return fail

execute store result score #required_auth gcs.count run data get storage gcs:temp current_handler.auth_level
execute if score @s gcs.auth < #required_auth gcs.count run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Yetkiniz yetersiz!","color":"red"}]
execute if score @s gcs.auth < #required_auth gcs.count run return fail

$function gcs:exec/_record_recent {hid:$(hid)}

# Çok komutlu handler — ayrı fonksiyona yönlendir (return ile çık)
execute if data storage gcs:temp current_handler.commands run return run function gcs:handlers/execute_multi

# Tek komutlu handler
function gcs:handlers/run_command with storage gcs:temp current_handler
function gcs:handlers/success_message with storage gcs:temp current_handler
function gcs:handlers/_cleanup
