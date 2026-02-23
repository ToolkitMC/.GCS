# Mevcut handler'ı al
execute store result storage gcs:temp current_index int 1 run scoreboard players get #index gcs.count
function gcs:admin/_search_get_handler with storage gcs:temp

# Temizlik
data remove storage gcs:temp current_index
