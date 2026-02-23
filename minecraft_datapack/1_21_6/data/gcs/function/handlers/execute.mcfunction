# Handler bilgilerini al
$data modify storage gcs:temp current_handler set from storage gcs:db handlers[{hid:$(hid)}]

# Handler var mı kontrol et
execute unless data storage gcs:temp current_handler run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Handler bulunamadı!","color":"red"}]
execute unless data storage gcs:temp current_handler run return fail

# Aktif mi kontrol et
execute unless data storage gcs:temp current_handler{enabled:1b} run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu handler şu anda pasif!","color":"red"}]
execute unless data storage gcs:temp current_handler{enabled:1b} run return fail

# Yetki seviyesini kontrol et
execute store result score #required_auth gcs.count run data get storage gcs:temp current_handler.auth_level
execute if score @s gcs.auth < #required_auth gcs.count run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Yetkiniz yetersiz!","color":"red"}]
execute if score @s gcs.auth < #required_auth gcs.count run return fail

# Son çalıştırılanlar listesine ekle (oyuncu bazlı, max 5)
$function gcs:exec/_record_recent {hid:$(hid)}

# Komutu çalıştır
function gcs:handlers/run_command with storage gcs:temp current_handler

# Başarı mesajı
function gcs:handlers/success_message with storage gcs:temp current_handler

# Temizle
data remove storage gcs:temp current_handler
