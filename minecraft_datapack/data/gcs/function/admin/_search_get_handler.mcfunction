# Handler bilgilerini al
$data modify storage gcs:temp current_handler set from storage gcs:db handlers[$(current_index)]

# Handler var mı kontrol et
execute unless data storage gcs:temp current_handler run return 0

# Handler bilgilerini sakla
execute store result score #hid gcs.temp run data get storage gcs:temp current_handler.hid
data modify storage gcs:temp h_name set from storage gcs:temp current_handler.name
data modify storage gcs:temp h_label set from storage gcs:temp current_handler.label
data modify storage gcs:temp h_desc set from storage gcs:temp current_handler.description
data modify storage gcs:temp h_category set from storage gcs:temp current_handler.category
execute store result score #auth gcs.temp run data get storage gcs:temp current_handler.auth_level
execute store result score #enabled gcs.temp run data get storage gcs:temp current_handler.enabled

# Arama kelimesinin handler'da olup olmadığını kontrol et
# NOT: Minecraft'ta string içinde arama yapmak zor olduğu için, 
# handler bilgilerini tellraw ile gösterip kullanıcının görmesini sağlıyoruz
function gcs:admin/_search_display_result with storage gcs:temp current_handler
