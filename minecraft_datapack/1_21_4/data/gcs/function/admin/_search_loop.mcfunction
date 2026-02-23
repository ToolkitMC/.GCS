# Arama döngüsü - her handler'ı kontrol et
execute if score #index gcs.count < #total gcs.count run function gcs:admin/_search_check_handler
scoreboard players add #index gcs.count 1
execute if score #index gcs.count < #total gcs.count run function gcs:admin/_search_loop
